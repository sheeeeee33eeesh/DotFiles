require("mason").setup()
require("mason-lspconfig").setup()
require("lspconfig").bashls.setup {}
require'lspconfig'.ansiblels.setup{}
require'lspconfig'.basedpyright.setup{}
require'lspconfig'.pyright.setup{}

require'lspconfig'.jedi_language_server.setup{}
