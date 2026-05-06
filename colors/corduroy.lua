-- ~/.config/nvim/colors/corduroy.lua
local colors = {
  bg            = "#1d1920",
  fg            = "#cdc8d0",
  border        = "#6f6373",
  comment       = "#887b8c",
  string        = "#edb392",
  keyword       = "#4b8686",
  functionc      = "#e99d90",
  type          = "#d27f91",
  constant      = "#e99d90",
  identifier    = "#cdc8d0",
  operator      = "#887b8c",
  preproc       = "#e06278",
  special       = "#c285b2",
  error         = "#e06278",
  warn          = "#f5c99f",
  info          = "#d27f91",
  hint          = "#887b8c",
  visual        = "#443c4a",
  cursorline    = "#251f28",
  line_nr       = "#887b8c",
  pmenu_bg      = "#261e2a",
  pmenu_fg      = "#887b8c",
  pmenu_sel_bg  = "#443c4a",
  pmenu_sel_fg  = "#cdc8d0",
  git_add       = "#d27f91",
  git_change    = "#e99d90",
  git_delete    = "#e06278",
}

vim.cmd("hi clear")
if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.o.background = "dark"
vim.o.termguicolors = true
local hi = vim.api.nvim_set_hl

-- UI Básica
hi(0, "Normal",          { bg = colors.bg, fg = colors.fg })
hi(0, "NormalNC",        { bg = colors.bg, fg = colors.fg })
hi(0, "Cursor",          { bg = colors.fg, fg = colors.bg })
hi(0, "CursorLine",      { bg = colors.cursorline })
hi(0, "CursorLineNr",    { fg = colors.fg })
hi(0, "LineNr",          { fg = colors.line_nr })
hi(0, "Visual",          { bg = colors.visual })
hi(0, "VisualNOS",       { bg = colors.visual })
hi(0, "Search",          { bg = colors.visual, fg = colors.fg })
hi(0, "IncSearch",       { bg = colors.visual, fg = colors.fg })
hi(0, "MatchParen",      { bg = colors.visual, fg = colors.fg, bold = true })
hi(0, "Folded",          { bg = colors.bg, fg = colors.comment })
hi(0, "FoldColumn",      { bg = colors.bg, fg = colors.comment })
hi(0, "SignColumn",      { bg = colors.bg, fg = colors.fg })
hi(0, "EndOfBuffer",     { bg = colors.bg, fg = colors.bg })

-- Janelas/UI
hi(0, "StatusLine",      { bg = colors.bg, fg = colors.fg, bold = true })
hi(0, "StatusLineNC",    { bg = colors.bg, fg = colors.line_nr })
hi(0, "WinSeparator",    { bg = colors.bg, fg = colors.border })
hi(0, "VertSplit",       { bg = colors.bg, fg = colors.border })
hi(0, "TabLine",         { bg = colors.bg, fg = colors.line_nr })
hi(0, "TabLineSel",      { bg = colors.visual, fg = colors.fg, bold = true })
hi(0, "TabLineFill",     { bg = colors.bg })
hi(0, "Pmenu",           { bg = colors.pmenu_bg, fg = colors.pmenu_fg })
hi(0, "PmenuSel",        { bg = colors.pmenu_sel_bg, fg = colors.pmenu_sel_fg })
hi(0, "PmenuSbar",       { bg = colors.border })
hi(0, "PmenuThumb",      { bg = colors.fg })

-- Sintaxe
hi(0, "Comment",         { fg = colors.comment, italic = true })
hi(0, "String",          { fg = colors.string })
hi(0, "Character",       { fg = colors.string })
hi(0, "Constant",        { fg = colors.constant })
hi(0, "Number",          { fg = colors.constant })
hi(0, "Boolean",         { fg = colors.special })
hi(0, "Float",           { fg = colors.constant })
hi(0, "Identifier",      { fg = colors.identifier })
hi(0, "Function",        { fg = colors.functionc })
hi(0, "Statement",       { fg = colors.keyword, bold = true })
hi(0, "Conditional",     { fg = colors.keyword, bold = true })
hi(0, "Repeat",          { fg = colors.keyword, bold = true })
hi(0, "Label",           { fg = colors.keyword })
hi(0, "Operator",        { fg = colors.operator })
hi(0, "Keyword",         { fg = colors.keyword, bold = true })
hi(0, "Exception",       { fg = colors.preproc })
hi(0, "PreProc",         { fg = colors.preproc })
hi(0, "Include",         { fg = colors.preproc })
hi(0, "Define",          { fg = colors.preproc })
hi(0, "Macro",           { fg = colors.preproc })
hi(0, "PreCondit",       { fg = colors.preproc })
hi(0, "Type",            { fg = colors.type, bold = true })
hi(0, "StorageClass",    { fg = colors.type })
hi(0, "Structure",       { fg = colors.type })
hi(0, "Typedef",         { fg = colors.type })
hi(0, "Special",         { fg = colors.special })
hi(0, "SpecialChar",     { fg = colors.special })
hi(0, "Tag",             { fg = colors.keyword })
hi(0, "Delimiter",       { fg = colors.operator })
hi(0, "SpecialComment",  { fg = colors.comment, italic = true })
hi(0, "Debug",           { fg = colors.preproc })
hi(0, "Underlined",      { fg = colors.fg, underline = true })
hi(0, "Title",           { fg = colors.functionc, bold = true })
hi(0, "Error",           { fg = colors.error, bold = true })
hi(0, "Todo",            { fg = colors.preproc, bg = colors.bg, bold = true })

-- LSP Diagnostics
hi(0, "DiagnosticError",        { fg = colors.error })
hi(0, "DiagnosticWarn",         { fg = colors.warn })
hi(0, "DiagnosticInfo",         { fg = colors.info })
hi(0, "DiagnosticHint",         { fg = colors.hint })
hi(0, "DiagnosticUnderlineError",   { undercurl = true, sp = colors.error })
hi(0, "DiagnosticUnderlineWarn",    { undercurl = true, sp = colors.warn })
hi(0, "DiagnosticUnderlineInfo",    { undercurl = true, sp = colors.info })
hi(0, "DiagnosticUnderlineHint",    { undercurl = true, sp = colors.hint })

-- Git (gitsigns.nvim)
hi(0, "GitSignsAdd",       { fg = colors.git_add })
hi(0, "GitSignsChange",    { fg = colors.git_change })
hi(0, "GitSignsDelete",    { fg = colors.git_delete })

-- Treesitter
hi(0, "@comment",           { link = "Comment" })
hi(0, "@string",            { link = "String" })
hi(0, "@keyword",           { link = "Keyword" })
hi(0, "@function",          { link = "Function" })
hi(0, "@function.builtin",  { link = "Special" })
hi(0, "@type",              { link = "Type" })
hi(0, "@variable",          { link = "Identifier" })
hi(0, "@constant",          { link = "Constant" })
hi(0, "@constant.builtin",  { link = "Special" })
hi(0, "@number",            { link = "Number" })
hi(0, "@boolean",           { link = "Boolean" })
hi(0, "@operator",          { link = "Operator" })
hi(0, "@punctuation.delimiter", { link = "Delimiter" })
hi(0, "@text.literal",      { link = "String" })
