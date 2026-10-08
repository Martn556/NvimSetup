return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			-- Conform will run multiple formatters sequentially
			python = { "isort", "black" },
			-- You can customize some of the format options for the filetype (:help conform.format)
			rust = { "rustfmt", lsp_format = "fallback" },
			-- Conform will run the first available formatter
			javascript = { "prettierd", "prettier", stop_after_first = true }, --when you download a formater from mason you have to add it here
		},
	},
	keys = {
		{
			"<leader>f", --space f formats your file for you like in vscode
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			desc = "[f]ormat buffer",
		},
	},
}
