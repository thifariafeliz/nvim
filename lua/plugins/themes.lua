return {

  {
      "sainnhe/gruvbox-material",
      lazy = true
  },

  {
      "sainnhe/everforest",
      lazy = true,
  },

  {
      "rebelot/kanagawa.nvim",
      lazy = true,
  },

  {
      "catppuccin/nvim",
      lazy = true,
  },

  {
      "Mofiqul/dracula.nvim",
      lazy = true,
  },

  {
      "morhetz/gruvbox",
      lazy = true,
  },

  {
      "vague2k/vague.nvim",
      lazy = true,
  },

  {
      "folke/tokyonight.nvim",
      lazy = true,
  },

  {
      "comfysage/evergarden",
      lazy = true,
  },

  {
      "AlexvZyl/nordic.nvim",
      lazy = true,
  },

  {
      "rose-pine/neovim",
      lazy = true,
  },

  {
      "shaunsingh/nord.nvim",
      lazy = true,
  },

  {
      "hardselius/warlock",
      lazy = true,
  },

  {
      "jnurmine/Zenburn",
      lazy = true,
  },

  {
      "yazeed1s/oh-lucy.nvim",
      lazy = true,
  },

  {
      "ilof2/posterpole.nvim",
      lazy = true,
  },

  {
      "ayu-theme/ayu-vim",
      lazy = true,
  },

  {
    "sainnhe/edge",
    lazy = true,
  },

  {
    "Shatur/neovim-ayu",
    lazy = true,
    config = function()
      require('ayu').setup({
        mirage = true,
        terminal = false,
        overrides = {
            Normal = { bg = "None" },
            NormalFloat = { bg = "none" },
            ColorColumn = { bg = "None" },
            SignColumn = { bg = "None" },
            Folded = { bg = "None" },
            FoldColumn = { bg = "None" },
            CursorLine = { bg = "None" },
            CursorColumn = { bg = "None" },
            VertSplit = { bg = "None" },
        },
      })
    end
  }
}
