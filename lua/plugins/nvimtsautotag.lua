return {
    "windwp/nvim-ts-autotag",
    config = function()
        require("nvim-ts-autotag").setup()
    end,
    ft = { "html", "xml", "javascript", "typescript", "javascriptreact", "typescriptreact" }
}
