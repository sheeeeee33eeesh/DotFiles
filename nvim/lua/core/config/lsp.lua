require("mason").setup{
  ui = {
    border = "rounded",
  },
}
require("mason-lspconfig").setup{
  ensure_installed = {
    "arduino_language_server",
    "bashls",
    "clangd",
    "dockerls",
    "jedi_language_server",
    "pyright",
  },
}

require("mason-lspconfig").setup_handlers{
  function (server_name)
    require("lspconfig")[server_name].setup {}
  end,
}
