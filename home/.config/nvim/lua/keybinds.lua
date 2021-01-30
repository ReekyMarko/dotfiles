local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Open/close nerdtree
map('', '<C-t>', '<cmd>NERDTreeToggle<CR>')

-- FZF
map('n', '<C-f>', '<cmd>Files<CR>')
map('n', '<C-g>', '<cmd>Rg<CR>')

-- Completion
map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})
map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})

-- Navigate between buffers
map('n', '<C-N>', ':bn<CR>', {silent = true})
map('n', '<C-B>', ':bp<CR>', {silent = true})

-- Navigate between splits
map('n', '<C-H>', '<C-W><C-H>')
map('n', '<C-J>', '<C-W><C-J>')
map('n', '<C-K>', '<C-W><C-K>')
map('n', '<C-L>', '<C-W><C-L>')
