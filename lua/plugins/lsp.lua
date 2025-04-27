return{
    "nvim-neo-tree/neo-tree.nvim",
    --"nvim-tree/nvim-tree.lua",
    config = function()
        local lspconfig = require("lspconfig")
        require("mason-lspconfig").setup_handlers({
            function(server_name)
                lspconfig[server_name].setup({})
            end,

            ["emmet_ls"] = function()
                require("lspconfig").emmet_ls.setup({
                filetypes = {
                    "html", "css", "scss", "javascriptreact", "typescriptreact", "blade", "php"
                },
                init_options = {
                    html = {
                        options = {
                            ["bem.enabled"] = true
                        }
                    }
                }
            })
        end,
        })

        vim.diagnostic.config({
            virtual_text = true,
        })
    end,
    dependencies = {
        "williamboman/mason-lspconfig.nvim"
    },
  lazy = false,
}
