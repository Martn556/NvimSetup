local config = {}
vim.opt.nu = true --line numbers on the side
vim.opt.relativenumber = true --relative numbers 

vim.opt.tabstop = 3
vim.opt.softtabstop = 3
vim.opt.shiftwidth = 3
vim.opt.expandtab = true --tabs spaces are 3 spaces big

vim.g.netrw_liststyle = 1 --When you open Ex it will be style 3 (its shit) style 2 is even more shit stick with style 1

--vim.opt.hlsearch = false --hlsearch weird fix it after
vim.opt.incsearch = true

vim.opt.scrolloff = 8 --you will never have more than 8 up tabs up or down, unless at the end of a file

vim.g.autopairs_enabled = true  
return config
