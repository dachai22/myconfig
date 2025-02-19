return {
  -- 格式化
  {
    "stevearc/conform.nvim",
    event = {"BufReadPre","BufNewFile"},
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        -- Conform will run multiple formatters sequentially
        python = { "isort", "black" },
        markdown = { "prettier" },
        html = {"prettier"},
        javascript = {"prettier"},
        typescript = {"prettier"},
      },
      formatters_on_save = {
        timeout_ms = 1000,
        lsp_fallback = true,
      },
    },
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
