echo "Copy init.vim"
mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/

echo "Copy custom nvim options"
mkdir -p ~/.config/nvim
cp -r options ~/.config/nvim/

echo "Copy custom lua options"
cp -r lua ~/.config/nvim/

echo "Copy coc-settings.json"
cp options/coc-settings.json ~/.config/nvim/

nvim -c 'PlugInstall'
