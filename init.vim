set nocompatible
filetype off
set clipboard+=unnamedplus

call plug#begin('~/.config/nvim/autoload')

" Themes
Plug 'tomasiser/vim-code-dark'
Plug 'nvim-lualine/lualine.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'

" CoC plugin
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

" grep
Plug 'BurntSushi/ripgrep'
Plug 'sharkdp/fd'

" comments
Plug 'tpope/vim-commentary'

" Hihglight other uses of the current word under the cursor
Plug 'rrethy/vim-illuminate'

" Dev Icons
Plug 'kyazdani42/nvim-web-devicons'

" Tree
Plug 'kyazdani42/nvim-tree.lua'

" Git
Plug 'lewis6991/gitsigns.nvim'
Plug 'tpope/vim-fugitive'

" Github
" Plug 'github/copilot.vim'

call plug#end()

" source custom configuration
source ~/.config/nvim/options/sets.vim
source ~/.config/nvim/options/theme.vim
source ~/.config/nvim/options/lualine.vim
source ~/.config/nvim/options/telescope.vim
source ~/.config/nvim/options/nvim-tree.vim
source ~/.config/nvim/options/coc-options.vim
source ~/.config/nvim/options/coc-extensions.vim

" nvim-tree
lua require('nvim-tree').setup()

" telescope
lua require('telescope-setup')

" gitsigns
lua require('gitsigns-setup')

" indent-blankline
lua require('indent-blankline-setup')
