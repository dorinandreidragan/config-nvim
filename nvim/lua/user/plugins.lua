local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  print("Installing packer close and reopen Neovim...")
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
    display = {
      open_fn = function()
        return require('packer.util').float({ border = 'single' })
      end
    }
  }
)

-- Install your plugins here
return packer.startup(function(use)

  -- Prerequisites
  use 'wbthomason/packer.nvim'              -- Package manager
  use 'kyazdani42/nvim-web-devicons'        -- Icons
  use 'nvim-lua/plenary.nvim'               -- Lua functions 

  -- Syntax
  use {
      'nvim-treesitter/nvim-treesitter',    -- Syntax highlighting
      run = ':TSUpdate'
  }

  -- Themes
  use 'gbprod/nord.nvim'                    -- Nord theme
  use 'nvim-lualine/lualine.nvim'           -- Status line

  -- Code Editing
  use 'github/copilot.vim'                  -- GitHub Copilot
  use 'nvim-tree/nvim-tree.lua'             -- File explorer
  use {
      'nvim-telescope/telescope.nvim',      -- Fuzzy finder
      tag = '0.1.5'
  }
  use {
      'numToStr/Comment.nvim',               -- Commenting
      config = function()
        require('Comment').setup()
      end
  }


  -- LSP
  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v3.x',
      requires = {
          --- Uncomment these if you want to manage LSP servers from neovim
          {'williamboman/mason.nvim'},
          {'williamboman/mason-lspconfig.nvim'},

          -- LSP Support
          {'neovim/nvim-lspconfig'},
          -- Autocompletion
          {'hrsh7th/nvim-cmp'},
          {'hrsh7th/cmp-nvim-lsp'},
          {'L3MON4D3/LuaSnip'},
      }
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require('packer').sync()
  end
end)
