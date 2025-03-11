return {
	-- 代码高亮
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {"lua","rust","html","css","javascript","json","bash"},
			highlight = { enable = true },
			indent = { enable = true },
		},
	},
}
