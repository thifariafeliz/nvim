return {
  "uga-rosa/ccc.nvim",
  config = function()
    require("ccc").setup({
      highlighter = {
        auto_enable = true,
        lsp = false,
      },
    })
  end,
  cmd = "CccPick",
  keys = {
    { "<leader>cp", "<cmd>CccPick<CR>", desc = "Color Picker" },
  },
}
