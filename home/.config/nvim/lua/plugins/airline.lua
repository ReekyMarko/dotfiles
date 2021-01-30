local g = vim.g
local o = vim.o

o.showmode = false
o.laststatus = 2
g["airline#extensions#tabline#enabled"] = 1
g.airline_powerline_fonts = 1
g.airline_section_warning = ''
g.airline_section_error = ''
g.airline_theme = 'onedark'
