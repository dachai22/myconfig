return {
	-- 状态栏
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("lualine").setup({
				options = {
					theme = "tokyonight", -- 使用 tokyonight 主题
				},
			})
		end,
	},
	-- buffer栏
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("bufferline").setup()
		end,
	},
	-- 主题配色
	{
		"folke/tokyonight.nvim",
		lazy = false, -- 启动时加载
		priority = 1000, -- 高优先级
		config = function()
			vim.cmd.colorscheme("tokyonight-storm") -- 设置主题
		end,
	},
	{
		"folke/trouble.nvim",
		-- opts will be merged with the parent spec
		opts = { use_diagnostic_signs = true },
	},
	-- 缩进高亮
	{
		"shellRaining/hlchunk.nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("hlchunk").setup({
				chunk = {
					enable = true,
					use_treesitter = true,
					supported_filetypes = {
						lua = true,
						html = true,
						rust = true,
					},
					style = {
						{ fg = "#806d9c" },
					},
				},
				indent = {
					enable = true,
					chars = { "│", "¦", "┆", "┊" },
					use_treesitter = true,
				},
				blank = {
					enable = false,
				},
				line_num = {
					enable = true,
					use_treesitter = true,
				},
			})
		end,
	},
	-- 快捷键提示
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		keys = {
			{
				"<leader>?",
				function()
					require("which-key").show({ global = false })
				end,
				desc = "Buffer Local Keymaps (which-key)",
			},
		},
	},
	-- 命令显示框
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			-- add any options here
		},
		dependencies = {
			-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
			"MunifTanjim/nui.nvim",
			-- OPTIONAL:
			--   `nvim-notify` is only needed, if you want to use the notification view.
			--   If not available, we use `mini` as the fallback
			"rcarriga/nvim-notify",
		},
	},
	-- 括号补全
	{
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		-- use opts = {} for passing setup options
		-- this is equivalent to setup({}) function
	},
}
