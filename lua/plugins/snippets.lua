return {
	"L3MON4D3/LuaSnip",
	dependencies = {
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
	},
	coifig = function()
		require("luasnip.loaders.from_vscode").load({
			exclude = { "javascript", "html", "typescript" },
		})
	end,
}
