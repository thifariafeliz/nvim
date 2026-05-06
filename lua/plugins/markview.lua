return {
    "OXY2DEV/markview.nvim",
    lazy = false,
    priority = 1000,
    config = function()
    --vim.defer_fn(function()
            -- só carrega depois que tudo carregar (inclusive o tema 
        --end, 50)
    require("markview").setup({
      experimental = {
        check_rtp = false,
        check_rtp_message = false,
      }
    })
    end,
}
