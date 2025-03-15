local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
----------------------------------------------------------------------------
  use 'wbthomason/packer.nvim'

  use 'nvim-tree/nvim-web-devicons'
  use 'catppuccin/nvim'
  use 'nvim-lualine/lualine.nvim'

  use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
  use { 'nvim-treesitter/nvim-treesitter' }
  use 'mbbill/undotree'
  use 'nvim-tree/nvim-tree.lua'



  use 'windwp/nvim-autopairs';  require("nvim-autopairs").setup {}
  use {
     "williamboman/mason.nvim",
     "williamboman/mason-lspconfig.nvim",
  }
use "lukas-reineke/indent-blankline.nvim"; require("ibl").setup()
  use {
     'neovim/nvim-lspconfig',
     'hrsh7th/cmp-nvim-lsp',
     'hrsh7th/cmp-buffer',
     'hrsh7th/cmp-path',
     'hrsh7th/cmp-cmdline',
     'hrsh7th/nvim-cmp',
  }
  use {
     'hrsh7th/cmp-vsnip',
     'hrsh7th/vim-vsnip',
     'L3MON4D3/LuaSnip',
     'saadparwaiz1/cmp_luasnip',
     'echasnovski/mini.snippets',
     'abeldekat/cmp-mini-snippets',
     'SirVer/ultisnips',
     'quangnguyen30192/cmp-nvim-ultisnips',
     'dcampos/nvim-snippy',
     'dcampos/cmp-snippy',
     'phenomenes/ansible-snippets',
  }

  if packer_bootstrap then
     require('packer').sync()
  end
end)
 



