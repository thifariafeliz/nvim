return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require 'nvim-treesitter.install'.prefer_git = false
        require 'nvim-treesitter.install'.compilers = { "clang", "gcc" }

        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "lua", "python", "cpp", "rust", "bash", "json", "html", "css", "javascript", "typescript", "c",
            },
            highlight = { enable = true },
            indent = { enable = true },
        })

        require("nvim-ts-autotag").setup({})
    end
}
