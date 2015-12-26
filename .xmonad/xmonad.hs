import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Layout.NoBorders

myTerminal = "urxvt"

myModMask = mod1Mask

myLayoutHook = smartBorders $ layoutHook defaultConfig

myBar = "xmobar"

myPP = xmobarPP
    { ppTitle = (\str -> "")
    }

toggleStrutsKey XConfig {XMonad.modMask = modMask}
    = (modMask, xK_b)

main = do
    xmonad =<< statusBar myBar myPP toggleStrutsKey defaultConfig
        { terminal = myTerminal
        , modMask = myModMask
        , layoutHook = myLayoutHook
        }
