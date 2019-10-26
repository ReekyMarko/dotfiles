" Enable python support
let g:python3_host_prog='/usr/bin/python3'
let pyxversion=3

" Use suda by default
let g:suda_smart_edit = 1

" Remap exit terminal mode to esc
tnoremap <Esc> <C-\><C-n>

" Use system clipboard
set clipboard=unnamedplus

" Remove extra line
set cmdheight=1

" Set pandoc preview program
let g:pandoc_preview_pdf_cmd = "zathura"

" Case insensitive seatch
set ignorecase
set smartcase

" Format on paste
set paste

" Automatically change working directory
set autochdir

" Nerdtree settings
let NERDTreeMinimalUI = 1 "remove press ? for help"
let NERDTreeAutoDeleteBuffer = 1 " delete buffer when file is deleted
let NERDTreeQuitOnOpen = 1 " close nerdtree when opening file
let NERDTreeDirArrows = 1
