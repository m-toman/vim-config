set nocompatible
filetype off

"filetype indent on 

" ==== vundle ====
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" ==== other settings ====
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
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

" use C-L to get back to command mode
:imap <C-L> <Esc>


" stay marked when using < > to indent
vnoremap < <gv
vnoremap > >gv

" Put vim files in the temp directory instead of the current directory
set directory=~/.vim/swapfiles//

syntax on

set encoding=UTF-8

" ctrl-p use current file
let g:ctrlp_working_path_mode = 'ra'

