vim.g.mapleader = " "

vim.keymap.set("n", "<leader>ex", vim.cmd.Ex) --open file explorer and close the file you are working on
--vim.keymap.set("n", "<leader>t", vim.cmd.Vex) --open file tree on the left
--vim.keymap.set("n", "<leader>;", "$a")
--vim.keymap.set("n", "<leader>ex", vim.cmd("w | Ex"))

vim.keymap.set("n", "<leader>es", function()
	vim.cmd("w")
	vim.cmd("Ex")
end)

vim.api.nvim_create_autocmd("TermOpen", { --this makes opening the termianl go into insert mode (its 1am im dead)
	pattern = "*",
	callback = function()
		vim.cmd("startinsert")
	end,
})

vim.keymap.set("n", "<leader>t", function()
	vim.cmd("vert ter")
end) --opens terminal on the left :p

vim.keymap.set("t", "<C-e>", "<cmd>q<cr>") --ctrl e to close the termianl

--<leader>gm for grapple menu
--<leader>gt to tag a file for the grapple menu
--<leader>(int) to go to that grapple file

vim.keymap.set('n', '<esc>', '<cmd>nohlsearch<CR>') --after you search you can press escape and it will auto remove the highlighting
