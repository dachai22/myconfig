return{
    -- 代码高亮
    {
      "nvim-treesitter/nvim-treesitter",
      opts = {
        ensure_installed = { "all" },
        highlight = { enable = true },
        indent = { enable = true },
      },
    },
}
