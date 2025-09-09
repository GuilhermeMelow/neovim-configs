local packer = require("packer")

return packer.startup(function(use)
  -- Packer itself
  use 'wbthomason/packer.nvim'

  -- Conform - plugin for formatter -
  use 'stevearc/conform.nvim' 

  -- Nvim-lint
  use 'mfussenegger/nvim-lint'
 
  -- Prisma parser
  use 'pantharshit00/vim-prisma'

  -- Auto-tag
  use 'windwp/nvim-ts-autotag'

  -- Prettier
  use 'prettier/vim-prettier'

  -- Refactoring
  use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
      {"nvim-lua/plenary.nvim"},
      {"nvim-treesitter/nvim-treesitter"}
    }
  }

  -- Color theme
  use 'dracula/vim'
  
  use 'neovim/nvim-lspconfig'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Search Plugin
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Icon Plugin
  use 'nvim-tree/nvim-web-devicons'

  -- Auto-save plugin self-explaned
  use "Pocco81/auto-save.nvim"

  -- Plugin that enable we to use external tools
  use({
    "jose-elias-alvarez/null-ls.nvim",
    requires = { "nvim-lua/plenary.nvim" },
  })

  -- Autocompletion
  use {
    'hrsh7th/nvim-cmp',
     requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'hrsh7th/vim-vsnip', -- Snippet support
      'hrsh7th/cmp-vsnip'
    }
  }

  -- Snippet support
  use 'L3MON4D3/LuaSnip'

  -- Statusline (lightweight and configurable)
  use 'nvim-lualine/lualine.nvim'

  -- Git integration
  use 'tpope/vim-fugitive'

  -- Automatically install missing plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
