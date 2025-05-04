-- Clears Highlighted Search
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
-- Exit Shortcuts
vim.keymap.set("n", "<leader>wqa", ":wqa!<CR>")
vim.keymap.set("n", "<leader>qa", ":qa!<CR>")
vim.keymap.set("n", "<leader>wq", ":wq<CR>")
vim.keymap.set("n", "<leader>wa", ":wa<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q!<CR>")
vim.keymap.set("n", "<leader>r", ":so<CR>")
-- Split Shortcuts
vim.keymap.set("n", "<leader>tv", ":split|set nonumber|terminal<CR>i")
vim.keymap.set("n", "<leader>th", ":vsplit|set nonumber|terminal<CR>i")
vim.keymap.set("n", "<C-h>", vim.cmd.UndotreeToggle)
-- Copilot Keymaps
vim.keymap.set("i", "<C-a>", 'copilot#Accept("\\<CR>")', {
	expr = true,
	replace_keycodes = false,
})
