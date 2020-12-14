local o = vim.o
local cmd = vim.cmd

------ Appearance ------

-- Set colorscheme
cmd 'colorscheme onedark'

-- True colors
o.termguicolors = true

-- Floating window transparency
o.winblend = 10

-- Remove extra line
o.cmdheight = 1

-- Always show signcolumn
o.signcolumn = 'yes'

-- Gutter and cursoline bg transparent
cmd 'highlight CursorLineNr guibg=transparent'
cmd 'highlight SignColumn guibg=transparent'

------ Misc -------

-- Case insensitive search
o.ignorecase = true
o.smartcase = true

-- Use system clipboard
o.clipboard = 'unnamedplus'

-- Autoindent and syntax higlight
o.autoindent = true
o.smartindent = true
o.tabstop = 4
o.shiftwidth = 4
cmd 'syntax on'
cmd 'filetype on'
cmd 'filetype plugin indent on'

-- Disable auto commenting
o.formatoptions = 'cro'
