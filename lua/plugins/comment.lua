-- Arquivo: lua/plugins/comment.lua
return {
    'numToStr/Comment.nvim',
    event = "VeryLazy", -- Carrega apenas quando necessário (opcional, mas recomendado)
    opts = {
        -- Aqui você pode adicionar configurações personalizadas
        -- Deixar vazio {} usa as configurações padrão (que já são ótimas)
        padding = true,
        sticky = true,
        ignore = nil,
        toggler = {
            line = 'gcc', -- Atalho para comentar linha
            block = 'gbc', -- Atalho para comentar bloco
        },
        opleader = {
            line = 'gc',
            block = 'gb',
        },
        extra = {
            above = 'gcO',
            below = 'gco',
            eol = 'gcA',
        },
        mappings = {
            basic = true,
            extra = true,
        },
    },
    -- O lazy.nvim chama automaticamente o setup() quando 'opts' é fornecido.
    -- Se você não estivesse usando opts, precisaria da linha abaixo:
    -- config = function() require('Comment').setup() end
}
