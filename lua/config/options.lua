vim.g.mapleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.termguicolors = true

vim.filetype.add({
	extension = {
		tf = "terraform",
		tfvars = "terraform",
	},
})
