-- Turn On Line Wrap
vim.cmd("set wrap")
-- Set Leader To <SPACE>
vim.g.mapleader = " "
vim.g.mallocalleader = " "
-- Allow Backspace On EOLs
vim.opt.backspace = "2"
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
-- Sets EOB to Space
vim.opt.fillchars = { eob = " " }
-- Sets NVIM Clipboard To System Clipboard
vim.cmd("set clipboard=unnamedplus")
-- Relative Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true

vim.diagnostic.config({
	virtual_text = true,
	underline = false,
	virutal_lines = true,
	signs = true,
})
