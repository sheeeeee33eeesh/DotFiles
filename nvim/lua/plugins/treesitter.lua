return {
	{
		"nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
		opts = {
			highlight = { enable = true },
			indent = { enable = true },
			ensure_installed = {},
			incremental_selection = {
				enable = true,
				keymaps = {
					init_selection = "<C-space>",
					node_incremental = "<C-space>",
					scope_incremental = false,
					node_decremental = "<bs>",
				},
			},
		},
	},
}
