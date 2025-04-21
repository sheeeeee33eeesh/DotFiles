-- Turn On Line Numbers
vim.cmd("set number")

-- Turn On Line Wrap
vim.cmd("set wrap")

-- Set Leader To <SPACE>
vim.g.mapleader = ' '
vim.g.mallocalleader = ' '

-- Allow Backspace On EOLs
vim.opt.backspace = '2'

-- Displays Command In Last Line Of Windows
vim.opt.showcmd = True

-- Auto Save Buffers 
vim.autowrite = true

-- Highlights Current Line
vim.opt.cursorline = true

-- Auto Reloads  Files
vim.opt.autoread = true

-- Sets Tab To 2 Spaces
vim.opt.tabstop = 2

-- Sets Indentiation To 3 Spaces
vim.opt.shiftwidth = 2

-- Round Indentations To Nearest Multiple of Shiftwidth
vim.opt.shiftround = true

-- Converts Tabs To Spaces
vim.opt.expandtab = true


-- Clears Highlighted Search
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Sets NVIM Clipboard To System Clipboard
vim.cmd ("set clipboard=unnamedplus")

-- Sets EOB to Space
vim.opt.fillchars = {eob= " "}

-- Exit Shortcuts
vim.keymap.set('n', '<leader>wqa', ':wqa!<CR>')
vim.keymap.set('n', '<leader>qa', ':qa!<CR>')
vim.keymap.set('n', '<leader>wq', ':wq<CR>')
vim.keymap.set('n', '<leader>wa', ':wa<CR>')
vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q!<CR>')
vim.keymap.set('n', '<leader>r', ':so<CR>')

-- Split Shortcuts
vim.keymap.set('n', '<leader>tv', ':split|set nonumber|terminal<CR>i')
vim.keymap.set('n', '<leader>th', ':vsplit|set nonumber|terminal<CR>i')
vim.keymap.set('n', '<C-h>', vim.cmd.UndotreeToggle)

-- Set Specific Filetypes
vim.filetype.add({
  filename = {
    ["docker-compose.yml"] = "yaml.docker-compose",
    ["docker-compose.yaml"] = "yaml.docker-compose",
    ["compose.yml"] = "yaml.docker-compose",
    ["compose.yaml"] = "yaml.docker-compose",
  },
})


-- Copilot Keymaps
vim.keymap.set('i', '<C-a>', 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false
})
vim.g.copilot_no_tab_map = true
