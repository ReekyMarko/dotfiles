local map = function(type, key, value)
    vim.fn.nvim_buf_set_keymap(0, type, key, value,
                               {noremap = true, silent = true})
end

-- Open/close nerdtree
map('n', '<C-t>', '<cmd>NERDTreeToggle<CR>')

-- FZF
map('n', '<C-f>', '<cmd>Files<CR>')
map('n', '<C-g>', '<cmd>Rg<CR>')

-- Completion
map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"')
map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<S-Tab>"')
