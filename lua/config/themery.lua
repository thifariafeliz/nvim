require("themery").setup({
    themes = {
        "gruvbox-material",
        "everforest",
        "kanagawa",
        "dracula",
        "vague",
        "tokyonight",
        "evergarden",
        "nordic",
        "warlock",
        "Zenburn",
        "rose-pine",
        "rose-pine-dawn",
        "rose-pine-main",
        "rose-pine-moon",
        "catppuccin",
        "catppuccin-frappe",
        "catppuccin-latte",
        "catppuccin-macchiato",
        "catppuccin-mocha",
        "ayu",
        "oh-lucy",
        "oh-lucy-evening",
        "posterpole",
        "edge",
        "ayu-mirage",
    },
    livePreview = true,
})

--[[vim.schedule(function()
  local themes = {
    "gruvbox-material",
    "everforest",
    "kanagawa",
    "dracula",
    "vague",
    "tokyonight",
    "evergarden",
    "nordic",
    "warlock",
    "Zenburn",
    "rose-pine",
    "rose-pine-dawn",
    "rose-pine-main",
    "rose-pine-moon",
    "catppuccin",
    "catppuccin-frappe",
    "catppuccin-latte",
    "catppuccin-macchiato",
    "catppuccin-mocha",
    "ayu",
    "oh-lucy",
    "oh-lucy-evening",
    "posterpole",
  }

  vim.ui.select(themes, { prompt = "Escolha um tema:" }, function(choice)
    if choice then
      vim.cmd.colorscheme(choice)
    end
  end)
end)]]
