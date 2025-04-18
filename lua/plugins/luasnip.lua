return {
	"L3MON4D3/LuaSnip",
	-- follow latest release.
	version = "v2.3.0", -- Replace <CurrentMajor> by the latest released major (first number of latest release)

	dependencies = {
    {
      "rafamadriz/friendly-snippets",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
        require("luasnip.loaders.from_lua").load({ paths = "./lua/luasnippets" })
      end,
    },
  },
}
