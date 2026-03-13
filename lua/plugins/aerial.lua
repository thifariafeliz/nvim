return {
  "stevearc/aerial.nvim",
  opts = {
    backends = {"treesitter", "lsp", "markdown", "telescope"},
    layout = {
      default_direction = "left",
      width = 40,
    },
  },
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-tree/nvim-web-devicons"
  },
  -- config = function(_, opts)
  --   require("aerial").setup(opts)
  --   require("telescope").load_extension("aerial")
  -- end,
}
