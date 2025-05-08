return {
	{
		"hrsh7th/nvim-cmp",
		version = false,
		event = "InsertEnter",
		dependencies = {
			"neovim/nvim-lspconfig",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/nvim-cmp",
			"onsails/lspkind.nvim",

			"L3MON4D3/LuaSnip",
			"saadparwaiz1/cmp_luasnip",

			"hrsh7th/cmp-calc",
			"hrsh7th/cmp-emoji",
			"chrisgrieser/cmp-nerdfont",
			"dmitmel/cmp-cmdline-history",
			"mtoohey31/cmp-fish",
		},

		opts = function()
			local cmp_autopairs = require("nvim-autopairs.completion.cmp")
			local cmp = require("cmp")
			local lspkind = require("lspkind")

			cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
			-- Buffer Configuration ------------------------------------------
			cmp.setup({
				formatting = {
					format = lspkind.cmp_format({
						mode = "symbol_text",
						menu = {
							buffer = "[Buffer]",
							nvim_lsp = "[LSP]",
							path = "[Path]",
							luasnip = "[LuaSnip]",
							emoji = "[Emoji]",
							fish = "[Fish]",
							nerdfont = "[NerdFont]",
							calc = "[Calc]",
							cmdline_history = "[Cmdline History]",
							cmdline = "[Cmdline]",
							copilot = "[Copilot]",
						},
					}),
				},
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,Search:None",
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
					["<C-k>"] = cmp.mapping.scroll_docs(-4),
					["<C-j>"] = cmp.mapping.scroll_docs(4),
					["<C-q>"] = cmp.mapping.abort(),
					["<C-c>"] = cmp.mapping.confirm({ select = true }),
				}),
				sources = cmp.config.sources({
					{ name = "copilot" },
					{ name = "nerdfont" },
					{ name = "emoji" },
					{ name = "fish" },
					{ name = "luasnip" },
					{ name = "nvim_lsp" },
					{ name = "path" },
					{ name = "buffer" },
					{ name = "calc" },
				}),
			})
			-- Buffer Configuration '/' '?' ----------------------------------
			cmp.setup.cmdline({ "/", "?" }, {
				mapping = cmp.mapping.preset.cmdline(),
				sources = {
					{ name = "buffer" },
					{ name = "path" },
				},
				formatting = {
					fields = {
						"abbr",
						"menu",
					},
				},
			})
			-- Buffer Configuration ':' --------------------------------------
			cmp.setup.cmdline(":", {
				mapping = cmp.mapping.preset.cmdline(),
				sources = cmp.config.sources({
					{ name = "cmdline_history" },
					{ name = "path" },
					{ name = "cmdline" },
				}),
				matching = { disallow_symbol_nonprefix_matching = false },
				view = { entries = { name = "custom", selection_order = "near_cursor" } },
				formatting = {
					fields = {
						"abbr",
						"menu",
					},
				},
			})
		end,
	},
}
