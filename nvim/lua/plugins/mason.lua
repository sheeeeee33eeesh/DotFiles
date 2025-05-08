return {
	{
		"mason-org/mason.nvim",
    lazy = true,
		opts = {
			ui = {
				border = "rounded",
			},
		},
	},

	{
		"mason-org/mason-lspconfig.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"mason-org/mason.nvim",
			"mason-org/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {
			ensure_installed = {
				"bashls",
				"clangd",
				"jedi_language_server",
				"lua_ls",
				"pyright",
			},
			automatic_enable = true,
		},
	},

	{
		"jay-babu/mason-null-ls.nvim",
		event = { "BufReadPre", "BufNewFile" },
		dependencies = {
			"mason-org/mason.nvim",
			"nvimtools/none-ls.nvim",
		},
		--    config = function()
		--      require("your.null-ls.config")
		--    end,
		opts = {
			ensure_installed = {
				"stylua",
				"clang_format",
				"shfmt",
				"black",
				"pyink",
				"selene",
				"shellharden",
				"mypy",
			},
		},
	},

	{
		"jay-babu/mason-nvim-dap.nvim",
    lazy = true,
		dependencies = {
			"mason-org/mason.nvim",
			"mfussenegger/nvim-dap",
		},
		opts = {
			ensure_installed = {
				"bash",
				"cppdbg",
				"python",
			},
			automatic_installation = true,
		},
	},
}
