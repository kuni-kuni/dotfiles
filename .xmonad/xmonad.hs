import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.ManageDocks
import XMonad.Layout.NoBorders
import XMonad.Util.Run

myTerminal = "urxvt"

myModMask = mod1Mask

myLayoutHook = smartBorders $ avoidStruts $ layoutHook defaultConfig

myLogHook h = dynamicLogWithPP $ defaultPP
    { ppOutput = hPutStrLn h
    }

myManageHook = manageDocks <+> manageHook defaultConfig

main = do
    xmproc <- spawnPipe "xmobar"
    xmonad defaultConfig
        { terminal = myTerminal
        , modMask = myModMask
        , layoutHook = myLayoutHook
        , logHook = myLogHook xmproc
        , manageHook = myManageHook
        }
