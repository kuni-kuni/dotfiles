import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Layout.NoBorders

main = do
    xmonad =<< xmobar defaultConfig
        { terminal = "urxvt"
        , modMask = mod1Mask
        , layoutHook = smartBorders $ layoutHook defaultConfig
        }
