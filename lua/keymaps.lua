-- Atalhos Úteis
vim.g.mapleader = " " -- Define a tecla líder como espaço
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- Abrir árvore de arquivos
vim.keymap.set("n", "<leader>E", vim.diagnostic.open_float, {desc = "Abre o erro em popup" }) -- abre um popup do diagnóstico

-- Usar o registro do sistema para copiar
vim.keymap.set('n', 'y', '"+y', { noremap = true })
vim.keymap.set('v', 'y', '"+y', { noremap = true })

-- Usar o registro do sistema para colar
vim.keymap.set('n', 'p', '"+p', { noremap = true })
vim.keymap.set('n', 'P', '"+P', { noremap = true })

-- Usar registro do sistema para copiar deletando
vim.keymap.set('v', 'd', '"+d', { noremap = true })
vim.keymap.set('n', 'd', '"+d', { noremap = true })

-- Navega verticalmente entre linhas visuais
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true })

-- aerial + telescope
vim.keymap.set("n", "<leader>fs", "<cmd>Telescope aerial<CR>")
