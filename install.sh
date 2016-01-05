ln -sf ~/dotfiles/.vimrc ~/
ln -sf ~/dotfiles/.Xresources ~/
ln -sf ~/dotfiles/.inputrc ~/

# xmonad
mkdir -p ~/.xmonad
ln -sf ~/dotfiles/.xmonad/xmonad.hs ~/.xmonad/
ln -sf ~/dotfiles/.xmobarrc ~/

# フォント
#mkdir -p ~/.config/fontconfig
#ln -sf ~/dotfiles/.config/fontconfig/fonts.conf ~/.config/fotconfig/
#sudo ln -sf /usr/share/fontconfig/conf.avail/10-unhinted.conf /etc/fonts/conf.d/

# vimperator
ln -sf ~/dotfiles/.vimperatorrc ~/
mkdir -p ~/.vimperator/plugin
curl -L -o ~/.vimperator/plugin/walk-input.js https://github.com/vimpr/vimperator-plugins/raw/master/walk-input.js
