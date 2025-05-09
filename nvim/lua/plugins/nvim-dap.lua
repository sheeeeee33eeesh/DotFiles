return {
	{
		"mfussenegger/nvim-dap",
    lazy = true,
		config = function()
			local dap = require("dap")
			-- Bash Setup
			dap.adapters.bashdb = {
				type = "executable",
				command = vim.fn.stdpath("data") .. "/mason/packages/bash-debug-adapter/bash-debug-adapter",
				name = "bashdb",
			}
			dap.configurations.sh = {
				{
					type = "bashdb",
					request = "launch",
					name = "Launch file",
					showDebugOutput = true,
					pathBashdb = vim.fn.stdpath("data")
						.. "/mason/packages/bash-debug-adapter/extension/bashdb_dir/bashdb",
					pathBashdbLib = vim.fn.stdpath("data") .. "/mason/packages/bash-debug-adapter/extension/bashdb_dir",
					trace = true,
					file = "${file}",
					program = "${file}",
					cwd = "${workspaceFolder}",
					pathCat = "cat",
					pathBash = "/bin/bash",
					pathMkfifo = "mkfifo",
					pathPkill = "pkill",
					args = {},
					env = {},
					terminalKind = "integrated",
				},
			}
			-- Python Setup
			dap.adapters.python = function(cb, config)
				if config.request == "attach" then
					local port = (config.connect or config).port
					local host = (config.connect or config).host or "127.0.0.1"
					cb({
						type = "server",
						port = assert(port, "`connect.port` is required for a python `attach` configuration"),
						host = host,
						options = {
							source_filetype = "python",
						},
					})
				else
					cb({
						type = "executable",
						command = vim.fn.expand("$HOME/.local/share/nvim/mason/packages/debugpy/venv/bin/python"),
						args = { "-m", "debugpy.adapter" },
						options = {
							source_filetype = "python",
						},
					})
				end
			end
			dap.configurations.python = {
				{
					type = "python",
					request = "launch",
					name = "Launch file",
					program = "${file}",
					pythonPath = function()
						local cwd = vim.fn.getcwd()
						if vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
							return cwd .. "/venv/bin/python"
						elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
							return cwd .. "/.venv/bin/python"
						else
							return "/usr/bin/python"
						end
					end,
				},
			}
			-- C/C++ Setup
			dap.adapters.cppdbg = {
				id = "cppdbg",
				type = "executable",
				command = vim.fn.expand("$HOME/.local/share/nvim/mason/bin/OpenDebugAD7"),
			}
			dap.configurations.cpp = {
				{
					name = "Launch file",
					type = "cppdbg",
					request = "launch",
					program = function()
						return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
					end,
					cwd = "${workspaceFolder}",
					stopAtEntry = true,
				},
				{
					name = "Attach to gdbserver :1234",
					type = "cppdbg",
					request = "launch",
					MIMode = "gdb",
					miDebuggerServerAddress = "localhost:1234",
					miDebuggerPath = "/usr/bin/gdb",
					cwd = "${workspaceFolder}",
					program = function()
						return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
					end,
				},
			}
			dap.configurations.c = dap.configurations.cpp
		end,
		keys = {
      { "<leader>dc", "<cmd>lua require('dap').continue()<CR>"},
      { "<leader>db", "<cmd>lua require('dap').toggle_breakpoint()<CR>"},
      { "<leader>dr", "<cmd>lua require('dap').step_over()<CR>"},
      { "<leader>di", "<cmd>lua require('dap').step_into()<CR>"},
      { "<leader>do", "<cmd>lua require('dap').step_out()<CR>"},
      { "<leader>dI", "<cmd>lua require('dap').step_back()<CR>"},
      { "<leader>dq", "<cmd>lua require('dap').terminal()<CR>"},
    },
	},

	{
		"folke/neodev.nvim",
		lazy = true,
		opts = {
			library = {
				plugins = {
					"nvim-dap-ui",
				},
				types = true,
			},
		},
	},

	{
		"rcarriga/nvim-dap-ui",
		dependencies = {
			"folke/neodev.nvim",
			"mfussenegger/nvim-dap",
			"nvim-neotest/nvim-nio",
			"jay-babu/mason-nvim-dap.nvim",
		},
		config = function()
			require("dapui").setup()
		end,

		keys = {
			{ "<leader>du", "<cmd>lua require('dapui').toggle()<cr>" },
		},
	},
}
