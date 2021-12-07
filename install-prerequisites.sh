echo "Install neovim"
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim

echo "Install plug.vim"
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Install nvm for node"
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | zsh
source ~/.zshrc

echo "Install node"
nvm install node

echo "Install pip"
sudo apt install python3-pip

echo "Install pynvim for Python plugins"
python3 -m pip install --user --upgrade pynvim