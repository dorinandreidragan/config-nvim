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

" Markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()

" source custom configuration
source ~/.config/nvim/options/sets.vim
source ~/.config/nvim/options/theme.vim
source ~/.config/nvim/options/lualine.vim
source ~/.config/nvim/options/telescope.vim
source ~/.config/nvim/options/coc-options.vim
source ~/.config/nvim/options/coc-extensions.vim

" nvim-tree
lua require('nvim-tree').setup()
source ~/.config/nvim/options/nvim-tree.vim

" telescope
lua require('telescope-setup')

" cmp
" TODO: figure out what `cmp_nvim_lsp` is
" lua require('cmp-setup')

" treesitter
" TODO: have to figure out what `nvim-treesitter.configs` is
" lua require('treesitter-setup')

" gitsigns
lua require('gitsigns-setup')

" indent-blankline
lua require('indent-blankline-setup')
