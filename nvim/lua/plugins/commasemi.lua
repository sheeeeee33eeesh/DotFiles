return {
	{
		"saifulapm/commasemi.nvim",
		opts = {
			leader = "<leader>",
			keymaps = true,
			commands = true,
		},
		keys = {
			{ "<leader>,", "<cmd>CommaToggle<cr>" },
			{ "<leader>;", "<cmd>SemiToggle<cr>" },
		},
	},
}
