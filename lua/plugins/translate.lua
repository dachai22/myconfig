return {
  -- 'voldikss/vim-translator',
  { "uga-rosa/translate.nvim", event = "VeryLazy" },
  {
    "potamides/pantran.nvim",
    event = "VeryLazy",
    config = function()
      require("pantran").setup({
        default_engine = "yandex", -- 默认翻译引擎
        engines = {
          yandex = {
            fallback = {
              default_source = "en", -- 自动检测源语言
              default_target = "zh", -- 目标语言为中文
            },
          },
        },
      })
    end,
  },
}
