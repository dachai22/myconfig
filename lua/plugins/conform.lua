return {
  -- 格式化
  {
    "stevearc/conform.nvim",
    event = "VeryLazy",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
        -- Conform will run multiple formatters sequentially
        python = { "isort", "black" },
        markdown = { "markdownlint" },
      },
      formatters_on_save = {
        timeout_ms = 1000,
        lsp_fallback = true,
      },
      formatters = {
        markdownlint = {
          command = "markdownlint",
          args = { "--fix", "$FILENAME" },
          stdin = false,
        },
      },
    },
  },
  {
    "Kicamon/markdown-table-mode.nvim",
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
