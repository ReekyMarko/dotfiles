local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Open/close nerdtree
map('n', '<C-t>', '<cmd>NERDTreeToggle<CR>')

-- FZF
map('n', '<C-f>', '<cmd>Files<CR>')
map('n', '<C-g>', '<cmd>Rg<CR>')

-- Completion
map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})
map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})
