# echo "install neovim"
# sudo add-apt-repository ppa:neovim-ppa/unstable
# sudo apt-get update
# sudo apt-get install neovim
curl -fLo ~/.config/nvim/autoload/plugged/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Copy init.vim"
mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/init.vim

echo "Copy custom nvim options"
mkdir -p ~/.config/nvim/options
cp options/* ~/.config/nvim/options

echo "Copy coc-settings.json"
mkdir -p ~/.config/coc
cp options/coc-settings.json ~/.config/nvim/

