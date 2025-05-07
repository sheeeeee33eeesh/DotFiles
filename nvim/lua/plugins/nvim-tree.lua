--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1
--vim.opt.termguicolors = true

return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      sort = {
        folders_first = true,
        sorter = "case_sensitive",
      },
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    }, 
    keys = {
      { "<C-n>", "<cmd>NvimTreeFindFileToggle<cr>" },
    }
  }
}
