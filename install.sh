SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

yay -S ttf-meslo-nerd-font-powerlevel10k zsh zsh-theme-powerlevel10k-git
rm ~/.alacritty.yml
ln -s $SCRIPTPATH/.alacritty.yml ~/.alacritty.yml
rm ~/.p10k.zsh
ln -s $SCRIPTPATH/.p10k.zsh ~/.p10k.zsh
rm ~/.vimrc
ln -s $SCRIPTPATH/.vimrc ~/.vimrc
rm ~/.zshrc
ln -s $SCRIPTPATH/.zshrc ~/.zshrc
rm ~/.Xresources
ln -s $SCRIPTPATH/.Xresources ~/.Xresources

rm -rf ~/.local/share/nvim/site/pack/packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

rm ~/.vim/autoload/plug.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

rm -rf ~/.config/nvim
ln -s $SCRIPTPATH/.config/nvim ~/.config/nvim
rm -rf ~/.config/i3
ln -s $SCRIPTPATH/.config/i3 ~/.config/i3

