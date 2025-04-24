vim.keymap.set('n', '<leader>e', function()
  local current_ft = vim.bo.filetype

  -- Verifica se já existe uma janela do Neo-tree aberta
  local neo_tree_win = nil
  for _, win in ipairs(vim.api.nvim_list_wins()) do
    local buf = vim.api.nvim_win_get_buf(win)
    local ft = vim.api.nvim_buf_get_option(buf, 'filetype')
    if ft == 'neo-tree' then
      neo_tree_win = win
      break
    end
  end

  if neo_tree_win then
    -- Já está aberto
    if current_ft == 'neo-tree' then
      vim.cmd('wincmd p') -- volta pro editor
    else
      vim.api.nvim_set_current_win(neo_tree_win) -- foca no Neo-tree
    end
  else
    -- Abre o Neo-tree e espera um pouco antes de trocar o foco
    vim.cmd('Neotree left')

    -- Espera 100ms antes de tentar trocar o foco
    vim.defer_fn(function()
      for _, win in ipairs(vim.api.nvim_list_wins()) do
        local buf = vim.api.nvim_win_get_buf(win)
        local ft = vim.api.nvim_buf_get_option(buf, 'filetype')
        if ft == 'neo-tree' then
          vim.api.nvim_set_current_win(win)
          break
        end
      end
    end, 100)
  end
end, { desc = 'Abrir ou alternar foco com Neo-tree' })
