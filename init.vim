set nocompatible
filetype off

call plug#begin('~/.config/nvim/autoload/plugged')

" Themes
Plug 'tomasiser/vim-code-dark'
Plug 'hoob3rt/lualine.nvim'

"" gutter to show changes on a side
"Plug 'airblade/vim-gitgutter'

"" Git plugins
"Plug 'tpope/vim-fugitive'                       " :Gblame
"Plug 'tpope/vim-rhubarb'                        " :GBrowse  
"Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

" CoC plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

"" NERD tree
"" Plug 'scrooloose/nerdtree'
"" Plug 'xuyuanp/nerdtree-git-plugin'
"" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" NERD comments
Plug 'scrooloose/nerdcommenter'

" Hihglight other uses of the current word under the cursor
Plug 'rrethy/vim-illuminate'

"" Dev Icons
Plug 'kyazdani42/nvim-web-devicons'

"" switch between terminals
"Plug 'christoomey/vim-tmux-navigator'

"" copy/paste
"Plug 'christoomey/vim-system-copy'

"" test
"Plug 'janko-m/vim-test'

call plug#end()

" source custom configuration
source ~/.config/nvim/options/sets.vim
source ~/.config/nvim/options/theme.vim
source ~/.config/nvim/options/lualine.vim
source ~/.config/nvim/options/vim-illuminate.vim
source ~/.config/nvim/options/nerdcommenter.vim
source ~/.config/nvim/options/coc-options.vim
source ~/.config/nvim/options/coc-extensions.vim
"source ~/.config/nvim/options/vim-test-options.vim
source ~/.config/nvim/options/telescope.vim

