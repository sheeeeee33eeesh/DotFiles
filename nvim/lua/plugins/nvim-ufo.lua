return {
	{
		"kevinhwang91/nvim-ufo",
		dependencies = {
			"kevinhwang91/promise-async",
		},
		config = function()
			require("ufo").setup({})
			vim.o.foldcolumn = "1"
			vim.o.foldlevel = 99
			vim.o.foldlevelstart = 99
			vim.o.foldenable = true
		end,
		keys = {
			{ "<leader>fao", "<cmd>lua require('ufo').openAllFolds()<CR>" },
			{ "<leader>fac", "<cmd>lua require('ufo').closeAllFolds()<CR>" },
		},
	},
}
