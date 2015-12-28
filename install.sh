ln -sf ~/dotfiles/.vimrc ~/
ln -sf ~/dotfiles/.Xresources ~/
ln -sh ~/dotfiles/.inputrc ~/

# xmonad
mkdir -p ~/.xmonad
ln -sf ~/dotfiles/.xmonad/xmonad.hs ~/.xmonad/
ln -sf ~/dotfiles/.xmobarrc ~/

# フォント
mkdir -p ~/.config/fontconfig
ln -sf ~/dotfiles/.config/fontconfig/fonts.conf ~/.config/fotconfig/

# vimperator
ln -sf ~/dotfiles/.vimperatorrc ~/
mkdir -p ~/.vimperator/plugin
curl -L -o ~/.vimperator/plugin/walk-input.js https://github.com/vimpr/vimperator-plugins/raw/master/walk-input.js
