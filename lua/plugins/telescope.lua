return{
    -- 高级搜索
    {
      "nvim-telescope/telescope.nvim",
      dependencies = {
        "nvim-lua/plenary.nvim",
        { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      },
      config = function()
        require("telescope").setup({
          extensions = {
            fzf = {
              fuzzy = true, -- false will only do exact matching
              override_generic_sorter = true, -- override the generic sorter
              override_file_sorter = true, -- override the file sorter
              case_mode = "smart_case", -- or "ignore_case" or "respect_case"
              -- the default case_mode is "smart_case"
            },
          },
          defaults = {
            file_ignore_patterns = {
              "node_modules",
              "%.git",
              "%.cache",
              "%.class",
              "%.pdf",
              "%.zip",
            },
          },
          pickers = {
            find_files = {
              hidden = true,
              find_command = {
                "fd",
                "--type",
                "f",
                "--hidden",
              },
            },
          },
        })
        -- To get fzf loaded and working with telescope, you need to call
        -- load_extension, somewhere after setup function:
        require("telescope").load_extension("fzf")
      end,
    },
}
