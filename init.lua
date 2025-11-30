require("options")
require("keymaps")
require("plugins")
require("config.autocmds")
require("config.barbarkm")
require("config.telescopekm")
--require("config.luasnipkm")
require("config.themery")
require("config.neo-tree")
require("config.trouble")
require("config.qmlls")

vim.keymap.set("n", "B", "ge", { noremap = false, silent = true } )
vim.opt.statuscolumn = "%s %{v:lnum} %{v:relnum}"

--[[vim.defer_fn(function()
    vim.cmd("colorscheme posterpole")
end, 0)--]]
