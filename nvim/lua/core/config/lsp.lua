local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
   -- see :help lsp-zero-keybindings
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)


require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = { "bashls", "lua_ls", "markdown_oxide", "typos_lsp"},
  handlers = {
    function(lua_ls)
      require('lspconfig')[lua_ls].setup({})
    end,
  },
})


