return {
  'neovim/nvim-lspconfig',
  dependencies = { 'saghen/blink.cmp' },
  opts = {
    servers = {
      lua_ls = {
        settings = {
          Lua = {
            workspace = {
              checkThirdParty = false,
              ignoreDir = {
                "AppData",
                ".git",
                "node_modules",
                "venv",
                "__pycache__"
              },
            },
            telemetry = {
              enable = false,
            },
          },
        },
      }
    }
  },
  config = function(_, opts)
    local lspconfig = require('lspconfig')
    for server, config in pairs(opts.servers) do
      config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities or {})
      lspconfig[server].setup(config)
    end
  end
}
