local packer = require("packer")

return packer.startup(function(use)
  -- Packer itself
  use 'wbthomason/packer.nvim'

  use 'neovim/nvim-lspconfig'
  
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  
  --auto-save plugin self-explaned
  use "Pocco81/auto-save.nvim"

  --Plugin that enable we to use external tools
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
