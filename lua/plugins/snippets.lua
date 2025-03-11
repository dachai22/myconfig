return {
	"L3MON4D3/LuaSnip",
	dependencies = {
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
	},
    event ="VeryLazy",
	coifig = function()
		require("luasnip.loaders.from_vscode").load({
			exclude = { "javascript", "html", "typescript" },
		})
	end,
}
