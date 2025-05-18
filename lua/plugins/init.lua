-- Configuração do Lazy.nvim no Windows
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)


require("lazy").setup({
    require("plugins.lsp"),
    require("plugins.treesitter"),
    --require("plugins.nvimtree"),
    require("plugins.neotree"),
    require("plugins.lualine"),
    require("plugins.dap"),
    require("plugins.mason"),
    require("plugins.whichkey"),
    require("plugins.autopairs"),
    require("plugins.trouble"),
    require("plugins.themery"),
    require("plugins.tscomments"),
    require("plugins.nvimsurround"),
    --require("plugins.nvimufo"),
    require("plugins.themes"),
    require("plugins.nvimtsautotag"),
    require("plugins.livepreview"),
    require("plugins.barbar"),
    require("plugins.telescope"),
    require("plugins.blink"),
    require("plugins.lspconfig"),
    --require("plugins.luasnip"),
    require("plugins.markview"),
    require("plugins.ccc"),

    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {}, event = "BufReadPost" },
    { "tjdevries/colorbuddy.nvim"}
}, {
        defaults = { lazy = true },
})
