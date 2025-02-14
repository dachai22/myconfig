return{
    -- 格式化
    {
      "stevearc/conform.nvim",
      event = "VeryLazy",
      opts = {
        formatters_by_ft = {
          lua = { "stylua" },
          -- Conform will run multiple formatters sequentially
          python = { "isort", "black" },
        },
        formatters_on_save = {
          timeout_ms = 1000,
          lsp_fallback = true,
        },
      },
    },
}
