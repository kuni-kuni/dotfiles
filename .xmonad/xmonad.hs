import XMonad
import XMonad.Actions.SwapWorkspaces
import XMonad.Actions.GridSelect
import XMonad.Layout.NoBorders
import XMonad.Layout.ResizableTile
import XMonad.Layout.ToggleLayouts
import XMonad.Layout.ThreeColumns
import XMonad.Hooks.DynamicLog
import XMonad.Hooks.InsertPosition
import XMonad.Hooks.EwmhDesktops
import XMonad.Prompt
import XMonad.Prompt.Shell
import XMonad.Util.EZConfig

myTerminal = "urxvt"

myModMask = mod1Mask

--M-Fでフルスクリーン
--ウィンドウが一つの時はボーダーなし
myLayoutHook = toggleLayouts (noBorders Full) $ smartBorders rTall ||| smartBorders (Mirror rTall) ||| smartBorders threeCol
    where
        rTall = ResizableTall 1 (3/100) (1/2) []
        threeCol = ThreeCol 1 (3/100) (1/2)

myBar = "xmobar"

--xmobarのStdinReader表示設定
myPP = xmobarPP
    { ppCurrent = xmobarColor "#ababab" "" . wrap "[" "]"
    , ppTitle = (\str -> "")
    }

--xmobar表示をM-bで切り替え
toggleStrutsKey XConfig {XMonad.modMask = modMask}
    = (modMask, xK_b)

myWorkspaces = ["1", "2", "3", "4", "5", "6", "7" ,"8" ,"9"]

--新規ウィンドウは末尾に追加
myManageHook = insertPosition End Newer

--EwmhDesktops
--アプリケーションのフルスクリーン表示対応
myHandleEventHook = handleEventHook defaultConfig <+> fullscreenEventHook

myConfig = defaultConfig
    { terminal = myTerminal
    , modMask = myModMask
    , layoutHook = myLayoutHook
    , workspaces = myWorkspaces
    , manageHook = myManageHook
    , handleEventHook = myHandleEventHook
    }
    `additionalKeys`
    (
    [ ((myModMask .|. shiftMask, xK_h), sendMessage MirrorShrink)
    , ((myModMask .|. shiftMask, xK_l), sendMessage MirrorExpand)
    , ((myModMask , xK_f), sendMessage ToggleLayout)
    , ((myModMask , xK_p), shellPrompt defaultXPConfig)
    --GridSelect
    , ((myModMask , xK_g), goToSelected defaultGSConfig)
    ]
    ++
    --SwapWorkspaces
    [((myModMask .|. controlMask, k), windows $ swapWithCurrent i)
        | (i, k) <- zip myWorkspaces [xK_1 ..]]
    )

main = xmonad =<< statusBar myBar myPP toggleStrutsKey myConfig
