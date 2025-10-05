return{
  "nvim-neo-tree/neo-tree.nvim",
  config = function()
    require("mason-lspconfig").setup_handlers({
      function(server_name)
        vim.lsp.config(server_name, {})
      end,

      ["emmet_ls"] = function()
        vim.lsp.config("emmet_ls", {
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
