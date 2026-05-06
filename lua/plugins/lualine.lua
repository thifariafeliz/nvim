--[[return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    local trouble = require("trouble")
    local symbols = trouble.statusline({
      mode = "lsp_document_symbols",
      groups = {},
      title = false,
      filter = { range = true },
      format = "{kind_icon}{symbol.name:Normal}",
      -- The following line is needed to fix the background color
      -- Set it to the lualine section you want to use
      hl_group = "lualine_c_normal",
    })

    -- Garante que o opts.section existe
    opts.sections = opts.sections or {}
    opts.section.lualine_c = opts.section.luialine_c or {}

    table.insert(opts.sections.lualine_c, {
      symbols.get,
      cond = symbols.has,
    })
  end,
} --]]

return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local trouble = require("trouble")
    local symbols = trouble.statusline({
      mode = "lsp_document_symbols",
      groups = {},
      title = false,
      filter = { range = true },
      format = "{kind_icon}{symbol.name:Normal}",
      hl_group = "lualine_c_normal",
    })

    require("lualine").setup({
      sections = {
        lualine_c = {
          {
            function()
            local text = symbols.get()
            if text == nil or text == "" then
            return ""
            end
            return text
            end,
            cond = symbols.has,
          },
        },
        lualine_x = { "aerial" },

        -- Or you can customize it
        lualine_y = {
          {
            "aerial",
            -- The separator to be used to separate symbols in status line.
            sep = " ) ",

            -- The number of symbols to render top-down. In order to render only 'N' last
            -- symbols, negative numbers may be supplied. For instance, 'depth = -1' can
            -- be used in order to render only current symbol.
            depth = nil,

            -- When 'dense' mode is on, icons are not rendered near their symbols. Only
            -- a single icon that represents the kind of current symbol is rendered at
            -- the beginning of status line.
            dense = false,

            -- The separator to be used to separate symbols in dense mode.
            dense_sep = ".",

            -- Color the symbol icons.
            colored = true,
          },
        },
      }
    })
  local aerial = require("aerial")

  require("lualine").setup({
    sections = {
      lualine_c = {
        "filename",
        {
          aerial.get_location,
          cond = aerial.is_available
        }
      }
    }
  })
  end,
}
