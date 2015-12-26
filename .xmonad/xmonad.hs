import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Layout.NoBorders
import XMonad.Layout.ResizableTile
import XMonad.Layout.ToggleLayouts
import XMonad.Util.EZConfig

myTerminal = "urxvt"

myModMask = mod1Mask

myLayoutHook = toggleLayouts (noBorders Full) $ smartBorders tiled ||| smartBorders (Mirror tiled)
    where
        tiled = ResizableTall 1 (3/100) (1/2) []

myBar = "xmobar"

myPP = xmobarPP
    { ppCurrent = xmobarColor "#ababab" "" . wrap "[" "]"
    , ppTitle = (\str -> "")
    }

toggleStrutsKey XConfig {XMonad.modMask = modMask}
    = (modMask, xK_b)

myConfig = defaultConfig
    { terminal = myTerminal
    , modMask = myModMask
    , layoutHook = myLayoutHook
    }
    `additionalKeys`
    [ ((myModMask .|. shiftMask, xK_h), sendMessage MirrorShrink)
    , ((myModMask .|. shiftMask, xK_l), sendMessage MirrorExpand)
    , ((myModMask , xK_f), sendMessage ToggleLayout)
    ]

main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig
