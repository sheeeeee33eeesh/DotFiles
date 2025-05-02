-- Boot Strap Packer
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
  use 'wbthomason/packer.nvim'

  use {
  ------------ LSP / Completions ------------

    -- LSP
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',

    -- Completions
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-calc',
    'hrsh7th/cmp-emoji',
    'chrisgrieser/cmp-nerdfont',
    'dmitmel/cmp-cmdline-history',
    {'mtoohey31/cmp-fish', ft = 'fish'},
    'windwp/nvim-autopairs',
    'github/copilot.vim',

    -- Snippets
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',

  ------------ UI / Navigation ------------

    -- UI
    'lukas-reineke/indent-blankline.nvim',
    'onsails/lspkind.nvim',
    'nvim-tree/nvim-web-devicons',
    'catppuccin/nvim',
    'nvim-lualine/lualine.nvim',
    {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'},

    -- Navigation
    'mbbill/undotree',
    'nvim-tree/nvim-tree.lua',
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
    {
        'MeanderingProgrammer/render-markdown.nvim',
        config = function()
            require('render-markdown').setup({})
        end,
    }
  }


  if packer_bootstrap then
     require('packer').sync()
  end
end)
