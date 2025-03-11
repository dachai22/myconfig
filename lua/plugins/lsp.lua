return {
	-- LSP
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"mason-org/mason-registry",
		},
        event = "BufReadPre",
		config = function()
			-- 配置 LSP
			local mason = require("mason")
			local mason_lspconfig = require("mason-lspconfig")

			-- 自动安装 LSP 服务器
			mason.setup()
			mason_lspconfig.setup({
				ensure_installed = { "lua_ls", "html", "cssls", "ts_ls", "rust_analyzer" }, -- 确保安装 Lua 和 Python 的 LSP
			})
			require("lspconfig").emmet_language_server.setup({
				filetypes = {
					"css",
					"eruby",
					"html",
					"javascript",
					"javascriptreact",
					"less",
					"sass",
					"scss",
					"pug",
					"typescriptreact",
				},
			})
		end,
	},
	-- 代码补全
	{
		"hrsh7th/nvim-cmp",
		dependencies = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
		},
        event = "InsertEnter",
		config = function()
			-- 配置 nvim-cmp
			local cmp = require("cmp")
			require("luasnip.loaders.from_vscode").lazy_load()
			cmp.setup({
				snippet = {
					-- REQUIRED - you must specify a snippet engine
					expand = function(args)
						require("luasnip").lsp_expand(args.body) -- For `luasnip` users.
					end,
				},
				mapping = {
					["<Up>"] = cmp.mapping(function(fallback)
						fallback() -- 禁用 <Up> 键
					end, { "i", "s" }),
					["<Down>"] = cmp.mapping(function(fallback)
						fallback() -- 禁用 <Down> 键
					end, { "i", "s" }),
					["<C-q>"] = cmp.mapping.complete(), -- 触发补全
					["<CR>"] = cmp.mapping.confirm({ select = true }), -- 确认选择
					["<Tab>"] = cmp.mapping.select_next_item(), -- 下一个选项
					["<S-Tab>"] = cmp.mapping.select_prev_item(), -- 上一个选项
					["<C-d>"] = cmp.mapping.scroll_docs(-4), -- 滚动文档
					["<C-f>"] = cmp.mapping.scroll_docs(4),
				},
				sources = cmp.config.sources({
					{ name = "nvim_lsp" }, -- LSP 补全
					{ name = "buffer" }, -- 缓冲区文本
					{ name = "luasnip" }, -- 缓冲区文本
					{ name = "path" }, -- 文件路径
				}),
			})
			-- Set up lspconfig.
			local nvim_lsp = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
			nvim_lsp.lua_ls.setup({
				capabilities = capabilities,
			})
			nvim_lsp.html.setup({
				capabilities = capabilities,
			})
			nvim_lsp.cssls.setup({
				capabilities = capabilities,
			})
			nvim_lsp.ts_ls.setup({
				capabilities = capabilities,
			})
			nvim_lsp.rust_analyzer.setup({
				capabilities = capabilities,
			})
		end,
	},
}
