SCRIPT=$(readlink -f "$0")
SCRIPTPATH=$(dirname "$SCRIPT")

ln -s $SCRIPTPATH/.vimrc ~/.vimrc

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

ln -s $SCRIPTPATH/.config/nvim ~/.config/nvim

ln -s $SCRIPTPATH/.config/i3 ~/.config/i3

