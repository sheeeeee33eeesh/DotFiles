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
------------------------------------- Start Plugins ------------------------------------

---- Packer Management -----------------------------------------------------------------
  use 'wbthomason/packer.nvim'

---- Style Stuff -----------------------------------------------------------------------
  use 'nvim-tree/nvim-web-devicons'
  use 'catppuccin/nvim'
  use 'nvim-lualine/lualine.nvim'

---- Programming Helpers ---------------------------------------------------------------
  use "github/copilot.vim"
  use {
    'VonHeikemen/lsp-zero.nvim', branch = 'v3.x', requires = {
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},
      {'neovim/nvim-lspconfig'},
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'L3MON4D3/LuaSnip'},
    }
  }
  use "lukas-reineke/indent-blankline.nvim"
  use 'windwp/nvim-autopairs'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'

---- Other Tools  ----------------------------------------------------------------------
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.6', requires = { {'nvim-lua/plenary.nvim'} } }
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'mbbill/undotree'
  use 'nvim-tree/nvim-tree.lua'
  use({ "iamcco/markdown-preview.nvim", run = function() vim.fn["mkdp#util#install"]() end, })
  use({
      'MeanderingProgrammer/render-markdown.nvim',
      after = { 'nvim-treesitter' },
      requires = { 'echasnovski/mini.nvim', opt = true },
  })

----------------------------------------------------------------------------------------
----------------------------------- End Plugins ----------------------------------------
----------------------------------------------------------------------------------------

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
