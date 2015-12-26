import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Layout.NoBorders

myTerminal = "urxvt"

myModMask = mod1Mask

myLayoutHook = smartBorders $ layoutHook defaultConfig

main = do
    xmonad =<< xmobar defaultConfig
        { terminal = myTerminal
        , modMask = myModMask
        , layoutHook = myLayoutHook
        }
