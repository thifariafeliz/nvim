-- Configuração do Lazy.nvim no Windows
local lazypath = vim.fn.stdpath("data") .. "\\lazy\\lazy.nvim"
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
    require("plugins.nvimtsautotag"),
    require("plugins.livepreview"),
    require("plugins.barbar"),
    require("plugins.telescope"),
    require("plugins.blink"),
    require("plugins.lspconfig"),
    --require("plugins.luasnip"),

    -- Temas
    { "sainnhe/gruvbox-material" },
    { "sainnhe/everforest" },
    { "rebelot/kanagawa.nvim" },
    { "catppuccin/nvim" },
    { "Mofiqul/dracula.nvim" },
    { "morhetz/gruvbox" },
    { "vague2k/vague.nvim" },
    { "folke/tokyonight.nvim" },
    { "comfysage/evergarden" },
    { "AlexvZyl/nordic.nvim" },
    { "rose-pine/neovim" },
    { "shaunsingh/nord.nvim" },
    { "hardselius/warlock" },
    { "jnurmine/Zenburn" },
    { "yazeed1s/oh-lucy.nvim" },
    { "ilof2/posterpole.nvim" },
    { "ayu-theme/ayu-vim" },

    { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} },
    { "tjdevries/colorbuddy.nvim"}

})
