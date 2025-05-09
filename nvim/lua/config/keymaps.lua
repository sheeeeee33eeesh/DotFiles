-- Clear Highlighted Search
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- Exit / Write
vim.keymap.set("n", "<leader>wqa", ":wqa!<CR>")
vim.keymap.set("n", "<leader>qa", ":qa!<CR>")
vim.keymap.set("n", "<leader>wq", ":wq<CR>")
vim.keymap.set("n", "<leader>wa", ":wa<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>q", ":q!<CR>")

-- Source
vim.keymap.set("n", "<leader>tv", ":split|set nonumber|terminal<CR>i")
vim.keymap.set("n", "<leader>th", ":vsplit|set nonumber|terminal<CR>i")

-- Sourcing
vim.keymap.set("n", "<leader>ws", ":wa!|source %<CR>")

-- Lazy
vim.keymap.set("n", "<leader>wsp", ":wa!|source %|Lazy sync<CR>")
vim.keymap.set("n", "<leader>ls", ":Lazy show<CR>")

-- Mason
vim.keymap.set("n", "<leader>m", ":Mason<CR>")

-- Folds
vim.keymap.set("n", "<leader>fo", ":foldopen<CR>")
vim.keymap.set("n", "<leader>fc", ":foldclose<CR>")

-- Copilot Panel
vim.keymap.set("n", "<leader>cp", ":Copilot panel<CR>")
