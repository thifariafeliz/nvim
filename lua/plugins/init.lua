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
  require("plugins.autopairs"),
  require("plugins.barbar"),
  require("plugins.blink"),
  require("plugins.ccc"),
  require("plugins.comment"),
  require("plugins.dap"),
  require("plugins.julia"),
  require("plugins.livepreview"),
  require("plugins.lsp"),
  require("plugins.lspconfig"),
  require("plugins.lualine"),
  require("plugins.mason"),
  require("plugins.neotree"),
  require("plugins.nvimsurround"),
  require("plugins.nvimtsautotag"),
  -- require("plugins.nvimufo"),
  require("plugins.outline"),
  require("plugins.render_markdown"),
  require("plugins.rustacean"),
  require("plugins.smart_splits"),
  require("plugins.snacks"),
  require("plugins.telescope"),
  require("plugins.themery"),
  require("plugins.themes"),
  require("plugins.treesitter"),
  require("plugins.trouble"),
  require("plugins.tscomments"),
  require("plugins.whichkey"),
  require("plugins.yuck"),
  require("plugins.codediff"),
  require("plugins.obsidian"),


  { "xiyaowong/transparent.nvim", lazy = false },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {}, event = "BufReadPost" },
  { "tjdevries/colorbuddy.nvim" }
}, {
        defaults = { lazy = true },
})
