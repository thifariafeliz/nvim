return {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
       require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = { "pyright", "lua_ls", "clangd", "rust_analyzer", "emmet_ls" },
            automatic_installation = true,
        })
    end,
    dependencies = { "williamboman/mason-lspconfig.nvim" },
  lazy = false,
}
