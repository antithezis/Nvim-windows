
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function ()
  -- tag = 'release' -- To use the latest release

 use {
   'windwp/nvim-autopairs',
    config = require "plugins.configs.autopairs"
}  
  use {
      "nvim-telescope/telescope.nvim",
      requires = {
        {'nvim-lua/popup.nvim'},                                 
        {'nvim-lua/plenary.nvim'},                               
        {'nvim-telescope/telescope-fzf-native.nvim', run="make"},
        {'nvim-telescope/telescope-symbols.nvim'},
        { "nvim-telescope/telescope-file-browser.nvim" }, 
      },
      config = require "plugins.configs.telescope",
    }

    use {
      'nvim-treesitter/nvim-treesitter',
      requires = {
        "windwp/nvim-ts-autotag",
        "p00f/nvim-ts-rainbow",
      },
      run = ':TSUpdate',
      config = require "plugins.configs.treesitter"
  }

  use {
    "williamboman/nvim-lsp-installer",
      requires = {
          "neovim/nvim-lspconfig",
          "jose-elias-alvarez/typescript.nvim",
      },
      config = require "plugins.configs.lsp"
    }

    use { 'ibhagwan/fzf-lua',
    -- optional for icon support
    requires = { 'kyazdani42/nvim-web-devicons' }
  }  

  -- UI

  use { "rmehri01/onenord.nvim" }
  use { "goolord/alpha-nvim", config = require "plugins.configs.alpha" }
  use { "kyazdani42/nvim-web-devicons", config = require "plugins.configs.icons" }
  use {
      "nvim-lualine/lualine.nvim",
       config = require "plugins.configs.lualine",
      requires = { "kyazdani42/nvim-web-devicons", opt = true },
  }

  use {
      "hrsh7th/nvim-cmp",
      requires = {
          "hrsh7th/cmp-nvim-lsp",
          "hrsh7th/cmp-nvim-lua",
          "hrsh7th/cmp-buffer",
          "hrsh7th/cmp-path",
          "hrsh7th/cmp-cmdline",
          "hrsh7th/cmp-nvim-lsp-document-symbol",
          "hrsh7th/cmp-vsnip",
          "hrsh7th/vim-vsnip",
          "hrsh7th/cmp-nvim-lsp-signature-help",
      },
      config = require "plugins.configs.cmp",
  }

  use {
    "L3MON4D3/LuaSnip",
    config = require "plugins.configs.luasnip"
  }

  use {"saadparwaiz1/cmp_luasnip"}

  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = require "plugins.configs.nvim-tree",
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use {
    'lewis6991/gitsigns.nvim',
    config = function()
    require('gitsigns').setup()
  end
   -- tag = 'release' -- To use the latest release 
  }

  use 'turbio/bracey.vim'
  
end)
