local debugKeys = {
	{
		"<leader>ds",
		function()
			require("dap").continue()
		end,
		desc = "debug: start/continue",
	},
	{
		"<leader>di",
		function()
			require("dap").step_into()
		end,
		desc = "debug: step into",
	},
	{
		"<leader>dp",
		function()
			require("dap").step_back()
		end,
		desc = "debug: step previous",
	},
	{
		"<leader>do",
		function()
			require("dap").step_over()
		end,
		desc = "debug: step over",
	},
	{
		"<leader>dO",
		function()
			require("dap").step_out()
		end,
		desc = "debug: step out",
	},
	{
		"<leader>b",
		function()
			require("dap").toggle_breakpoint()
		end,
		desc = "debug: toggle breakpoint",
	},
}

return {
	{
		"mfussenegger/nvim-dap",
		keys = debugKeys,
		config = function()
			local dap = require("dap")

			dap.adapters["pwa-node"] = {
				type = "server",
				host = "localhost",
				port = "${port}", -- nvim-dap will automatically assign a random available port
				executable = {
					command = "js-debug-adapter", -- Or the absolute path to your Mason binary
					args = { "${port}" },
				},
			}

			dap.configurations.javascript = {
				{
					type = "pwa-node",
					request = "launch",
					name = "Launch Current File",
					program = "${file}",
					cwd = "${workspaceFolder}",
				},
			}
		end,
	},
	"jay-babu/mason-nvim-dap.nvim",
	{ "igorlfs/nvim-dap-view", opts = {} },
}
