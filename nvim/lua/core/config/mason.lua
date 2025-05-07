require("mason").setup({
  ui = {
    border = "rounded",
  },
})

require("mason-nvim-dap").setup({
  ensure_installed = {
    "bash",
    "cppdbg",
    "python",
  },
  automatic_installation = true,
})

require("mason-lspconfig").setup({
  ensure_installed = {
    "bashls",
    "clangd",
    "jedi_language_server",
    "lua_ls",
    "pyright",
  },
  automatic_enable = true,
})

require("mason-null-ls").setup({
  ensure_installed = {
    "stylua",
    "clang_format",
    "shfmt",
    "black",
    "pyink",
    "selene",
    "shellharden",
    "mypy",
  },
})
