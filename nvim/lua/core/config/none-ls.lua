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

local null_ls = require("null-ls")
null_ls.setup({
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.formatting.clang_format,
    null_ls.builtins.formatting.shfmt,
    null_ls.builtins.formatting.black,
    null_ls.builtins.formatting.pyink,
    null_ls.builtins.formatting.shellharden,
    null_ls.builtins.diagnostics.selene,
    null_ls.builtins.diagnostics.mypy,
  },
})
vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
