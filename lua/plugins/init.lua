vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function ()
	use 'wbthomason/packer.nvim'	-- Packer can mage itself
  use {
      "nvim-telescope/telescope.nvim",
      requires = {
        {'nvim-lua/popup.nvim'},                                 
        {'nvim-lua/plenary.nvim'},                               
        {'nvim-telescope/telescope-fzf-native.nvim', run="make"},
        {'nvim-telescope/telescope-symbols.nvim'},    
      },
      config = require "plugins.configs.telescope",
    }
  
    use { "nvim-telescope/telescope-file-browser.nvim" }
  
    use { 'ibhagwan/fzf-lua',
      -- optional for icon support
      requires = { 'kyazdani42/nvim-web-devicons' }
    }
    use { "rmehri01/onenord.nvim" }
    use { "goolord/alpha-nvim", config = require "plugins.configs.alpha" }
    use { "kyazdani42/nvim-web-devicons", config = require "plugins.configs.icons" }
    use {
        "nvim-lualine/lualine.nvim",
        config = require "plugins.configs.lualine",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
    }


    use {
        "williamboman/nvim-lsp-installer",
        requires = {
            "neovim/nvim-lspconfig",
            "jose-elias-alvarez/typescript.nvim",
        },
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

 end)

