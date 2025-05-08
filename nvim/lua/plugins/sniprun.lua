return {
	{
		"michaelb/sniprun",
		build = "sh install.sh",
    cmd = {
      "SnipReplMemoryClean",
      "SnipReset",
      "SnipClose",
      "SnipInfo",
      "SnipRun",
      "SnipInfo",
    },
		opts = {
			display = { "Terminal" },
		},
    keys = {
			{ "<leader>r", "<cmd>SnipRun<cr>" },
			{ mode = "v", "<leader>r", "<cmd>'<,'>SnipRun<cr>" },
    },
	},
}
