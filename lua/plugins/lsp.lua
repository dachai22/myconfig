return{
    -- LSP
    {
      "neovim/nvim-lspconfig",
      dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "mason-org/mason-registry",
      },
      config = function()
        -- 配置 LSP
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")

        -- 自动安装 LSP 服务器
        mason.setup()
        mason_lspconfig.setup({
          ensure_installed = { "lua_ls", "pyright" }, -- 确保安装 Lua 和 Python 的 LSP
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
      config = function()
        -- 配置 nvim-cmp
        local cmp = require'cmp'
        cmp.setup({
          mapping = cmp.mapping.preset.insert({
            -- 补全选择
            ["<C-q>"] = cmp.mapping.complete(), -- 触发补全
            ["<CR>"] = cmp.mapping.confirm({ select = true }), -- 确认选择
            ["<C-j>"] = cmp.mapping.select_next_item(), -- 下一个选项
            ["<C-k>"] = cmp.mapping.select_prev_item(), -- 上一个选项
            ["<C-d>"] = cmp.mapping.scroll_docs(-4), -- 滚动文档
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
          }),
          sources = cmp.config.sources({
            { name = "nvim_lsp" }, -- LSP 补全
            { name = "buffer" }, -- 缓冲区文本
            { name = "path" }, -- 文件路径
          }),
        })
            -- Set up lspconfig.
        local nvim_lsp = require("lspconfig")
    	local capabilities = require('cmp_nvim_lsp').default_capabilities()
            -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
    	nvim_lsp["pyright"].setup {
        	capabilities = capabilities
    	}
    	nvim_lsp["lua_ls"].setup {
        	capabilities = capabilities
    	}
      end,
    },
}
