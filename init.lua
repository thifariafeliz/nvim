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
require("config.smart_splits")
-- require("config.aerial")

vim.keymap.set("n", "B", "ge", { noremap = false, silent = true } )
vim.opt.statuscolumn = "%s %{v:lnum} %{v:relnum}"

vim.g.neovide_position_animation_length = 0
vim.g.neovide_cursor_animation_length = 0.00
vim.g.neovide_cursor_trail_size = 0
vim.g.neovide_cursor_animate_in_insert_mode = false
vim.g.neovide_cursor_animate_command_line = false
vim.g.neovide_scroll_animation_far_lines = 0
vim.g.neovide_scroll_animation_length = 0.00

--[[vim.defer_fn(function()
    vim.cmd("colorscheme posterpole")
end, 0)--]]

