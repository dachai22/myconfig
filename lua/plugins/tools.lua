return {
	{
		"mikavilpas/yazi.nvim",
		event = "VeryLazy",
		keys = {
			-- 👇 in this section, choose your own keymappings!
			{
				"<leader>e",
				mode = { "n", "v" },
				"<cmd>Yazi<cr>",
				desc = "Open yazi at the current file",
			},
		},
		--@type YaziConfig
		opts = {
			-- if you want to open yazi instead of netrw, see below for more info
			open_for_directories = false,
			keymaps = {
				show_help = "<f1>",
			},
		},
	},
	{
		"brianhuster/live-preview.nvim",
		event = "VeryLazy",
		config = function()
			require("livepreview.config").set()
		end,
	},
	{
		"mg979/vim-visual-multi",
		event = "VeryLazy",
	},
}
