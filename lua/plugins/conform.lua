return {
	-- 格式化
	{
		"stevearc/conform.nvim",
		event = { "BufReadPre", "BufNewFile" },
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				markdown = { "prettier" },
				html = { "prettier" },
				javascript = { "prettier" },
				typescript = { "prettier" },
				rust = { "rustfmt" },
			},
			formatters_on_save = {
				timeout_ms = 1000,
				lsp_fallback = true,
			},
		},
	},
	{
		"WhoIsSethDaniel/mason-tool-installer.nvim",
		config = function()
			require("mason-tool-installer").setup({
				ensure_installed = { "stylua", "prettier", "rustfmt" },
				auto_update = false,
				run_on_start = true,
				start_delay = 3000, -- 3 second delay
				debounce_hours = 5, -- at least 5 hours between attempts to install/update
			})
		end,
	},

	{
		"Kicamon/markdown-table-mode.nvim",
		event = "VeryLazy",
		config = function()
			require("markdown-table-mode").setup({
				filetype = {
					"*.md",
				},
				options = {
					insert = true, -- when typing "|"
					insert_leave = true, -- when leaving insert
					pad_separator_line = false, -- add space in separator line
					alig_style = "center", -- default, left, center, right
				},
			})
		end,
	},
}
