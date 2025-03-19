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

  use {

     -- LSP / Programming Tools / Completion
     'williamboman/mason.nvim',
     'williamboman/mason-lspconfig.nvim',
     'neovim/nvim-lspconfig',
     'hrsh7th/nvim-cmp',
     'hrsh7th/cmp-nvim-lsp',
     'hrsh7th/cmp-buffer',
     'hrsh7th/cmp-path',
     'hrsh7th/cmp-cmdline',
     'hrsh7th/cmp-calc',
     'hrsh7th/cmp-emoji',
     'hrsh7th/cmp-copilot',
     'chrisgrieser/cmp-nerdfont',
     'dmitmel/cmp-cmdline-history',
     {
       'mtoohey31/cmp-fish', ft = "fish"
     },
     'github/copilot.vim',
     'windwp/nvim-autopairs',
     'lukas-reineke/indent-blankline.nvim',


     -- Snippets
     'L3MON4D3/LuaSnip',
     'saadparwaiz1/cmp_luasnip',
     --------------------------------
     -- Uncomment When Using Ansible
     -- 'phenomenes/ansible-snippets',
     --------------------------------

     -- UI / Navigation 
     'onsails/lspkind.nvim',
     'nvim-tree/nvim-web-devicons',
     'catppuccin/nvim',
     'nvim-lualine/lualine.nvim',
     { 
        'nvim-telescope/telescope.nvim', requires = {
           'nvim-lua/plenary.nvim'
        }
     },
     'nvim-treesitter/nvim-treesitter',
     'mbbill/undotree',
     'nvim-tree/nvim-tree.lua',

  }
  use({
      'MeanderingProgrammer/render-markdown.nvim',
      after = { 'nvim-treesitter' },
      requires = { 'nvim-tree/nvim-web-devicons', opt = true },
      requires = { 'echasnovski/mini.icons', opt = true }, -- if you use standalone mini plugins
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }, -- if you prefer nvim-web-devicons
      config = function()
          require('render-markdown').setup({})
      end,
  })


  if packer_bootstrap then
     require('packer').sync()
  end
end)
