return {
  "stevearc/aerial.nvim",

  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons"
  },

  lazy = false,

  opts = {
    backends = {"treesitter", "lsp", "markdown", "telescope", "lualine"},

    layout = {
      default_direction = "right",
      width = 40,

      win_opts = {}
    },

    keymaps = {
      ["{"] = false,
      ["}"] = false,
    },
  },


  config = function(_, opts)
    require("aerial").setup(opts)
    require("telescope").load_extension("aerial")
  end,
}
