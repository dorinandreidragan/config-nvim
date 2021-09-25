# echo "install neovim"
# sudo add-apt-repository ppa:neovim-ppa/unstable
# sudo apt-get update
# sudo apt-get install neovim

echo "install typescript and typescript-language-server"
sudo npm install -g typescript typescript-language-server

echo "Copy init.lua"
mkdir ~/.config/nvim
cp init.lua ~/.config/nvim

echo "Copy custom nvim options"
mkdir -p ~/.config/nvim/options
cp options/* ~/.config/nvim/options

echo "Copy custom lua modules"
mkdir -p ~/.config/nvim/lua
cp lua/* ~/.config/nvim/lua

# echo "Copy coc-settings.json"
# mkdir -p ~/.config/coc
# cp options/coc-settings.json ~/.config/nvim/

