-- Turn On Line Numbers
vim.cmd("set number")

-- Turn On Line Wrap
vim.cmd("set wrap")

-- Set Leader To <SPACE>
vim.g.mapleader = ' '
vim.g.mallocalleader = ' '


-- Allows Back For EOLs and Stuff
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
vim.opt.tabstop = 3

-- Sets Indentiation To 3 Spaces
vim.opt.shiftwidth = 3

-- Round Indentations To Nearest Multiple of Shiftwidth
vim.opt.shiftround = true

-- Converts Tabs To Spaces
vim.opt.expandtab = true


-- Clears Highlighted Search
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

-- Sets NVIM Clipboard  To System Clipboard
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
