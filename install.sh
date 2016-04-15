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

# Neobundle
mkdir -p ~/.vim/bundle
git clone https://github.com/shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim

# vimperator
ln -sf ~/dotfiles/.vimperatorrc ~/
mkdir -p ~/.vimperator/plugin
curl -L -o ~/.vimperator/plugin/walk-input.js https://github.com/vimpr/vimperator-plugins/raw/master/walk-input.js
