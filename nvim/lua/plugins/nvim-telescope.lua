return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		require = { "nvim-lua/plenary.nvim" },
		opts = {
			defaults = {
				mappings = {
					i = {
						["<C-j>"] = "preview_scrolling_down",
						["<C-k>"] = "preview_scrolling_up",
					},
				},
			},
		},
		keys = {
			{ "<leader>fg", "<cmd>Telescope live_grep<cr>" },
			{ "<leader>p", "<cmd>Telescope find_files<cr>" },
			{ "<leader>fh", "<cmd>Telescope help_tags<cr>" },
		},
	},
}
