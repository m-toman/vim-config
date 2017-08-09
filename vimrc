set nocompatible

filetype indent on 

set bs=2
set background=dark
set ruler
"set number
"set colorcolumn=80
set incsearch

autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype cpp setlocal expandtab tabstop=3 shiftwidth=3
autocmd Filetype c setlocal expandtab tabstop=3 shiftwidth=3
autocmd Filetype sh setlocal expandtab tabstop=3 shiftwidth=3

" use C-L to get back to command mode
:imap <C-L> <Esc>


" stay marked when using < > to indent
vnoremap < <gv
vnoremap > >gv

" Put vim files in the temp directory instead of the current directory
set directory=~/.vim/swapfiles//

syntax on
