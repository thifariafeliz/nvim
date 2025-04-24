require("options")
require("keymaps")
require("plugins")
require("config.autocmds")
require("config.barbarkm")
require("config.telescopekm")
--require("config.luasnipkm")
require("config.themery")
require("config.neo-tree")

--[[vim.defer_fn(function()
    vim.cmd("colorscheme posterpole")
end, 0)--]]
