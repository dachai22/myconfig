return{    -- 状态栏
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
        vim.cmd.colorscheme("tokyonight") -- 设置主题
      end,
    },
    {
      "folke/trouble.nvim",
      -- opts will be merged with the parent spec
      opts = { use_diagnostic_signs = true },
    },
    -- 分块显示
    {
      "lukas-reineke/indent-blankline.nvim",
      main = "ibl",
      --@module "ibl"
      --@type ibl.config
      opts = {},
    },
    -- 快捷键提示
    {
      "folke/which-key.nvim",
      event = "VeryLazy",
      opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      },
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
    -- lazy.nvim
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
