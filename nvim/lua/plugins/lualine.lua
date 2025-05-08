return {
	{
		"nvim-lualine/lualine.nvim",
    event = "VeryLazy",
		opts = {
			options = {
				icons_enabled = true,
				theme = "tokyonight",
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = { { "filename", path = 3 } },
				lualine_b = { "filesize" },
				lualine_c = { "filetype", "encoding" },
				lualine_x = { "fileformat" },
				lualine_y = { "location" },
				lualine_z = { "progress" },
			},
		},
	},
}
