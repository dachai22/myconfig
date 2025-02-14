local keymap = vim.keymap

-- 设置 leader 键为空格
vim.g.mapleader = " "
vim.g.maplpcalleader = " "

keymap.set("n", "<leader>w", ":w<CR>", { silent = true })
keymap.set("n", "<leader>q", ":q<CR>", { silent = true })

keymap.set("n", "K", "5k", { silent = true })
keymap.set("n", "J", "5j", { silent = true })
keymap.set("n", "L", "5l", { silent = true })
keymap.set("n", "H", "5h", { silent = true })

local builtin = require("telescope.builtin")
keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
keymap.set("n", "<leader><space>", builtin.buffers, { desc = "Telescope buffers" })
keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

keymap.set({ "n", "v" }, "<leader>fm", function()
  require("conform").format({
    lsp_fakkback = true,
    async = true,
    timeout_ms = 1000,
  })
end, { desc = "Format File" })
