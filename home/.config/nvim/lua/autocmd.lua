local cmd = vim.cmd

-- Remap exit terminal mode to esc
cmd('au TermOpen * tnoremap <buffer> <Esc> <c-\\><c-n>')
