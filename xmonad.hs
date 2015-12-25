import XMonad
import XMonad.Hooks.DynamicLog

main = do
    xmonad =<< xmobar defaultConfig
        { terminal = "urxvt"
        , modMask = mod1Mask
        }
