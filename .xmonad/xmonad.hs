import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Layout.NoBorders
import XMonad.Layout.ResizableTile
import XMonad.Layout.ToggleLayouts
import XMonad.Util.EZConfig
import XMonad.Actions.SwapWorkspaces
import XMonad.Prompt
import XMonad.Prompt.Shell

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

myWorkspaces = ["1", "2", "3", "4", "5", "6", "7" ,"8" ,"9"]

myConfig = defaultConfig
    { terminal = myTerminal
    , modMask = myModMask
    , layoutHook = myLayoutHook
    , workspaces = myWorkspaces
    }
    `additionalKeys`
    (
    [ ((myModMask .|. shiftMask, xK_h), sendMessage MirrorShrink)
    , ((myModMask .|. shiftMask, xK_l), sendMessage MirrorExpand)
    , ((myModMask , xK_f), sendMessage ToggleLayout)
    , ((myModMask , xK_p), shellPrompt defaultXPConfig)
    ]
    ++
    [((myModMask .|. controlMask, k), windows $ swapWithCurrent i)
        | (i, k) <- zip myWorkspaces [xK_1 ..]]
    )

main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig
