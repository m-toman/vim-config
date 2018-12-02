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

Plugin 'vim-airline/vim-airline'

Plugin 'scrooloose/nerdtree'

Plugin 'flazz/vim-colorschemes'

Plugin 'elixir-editors/vim-elixir'

Plugin 'tell-k/vim-autopep8'

Plugin 'vim-scripts/indentpython.vim'

Plugin 'vim-syntastic/syntastic'

Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'

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
set ruler
"set number
"set colorcolumn=80
set incsearch

" leader key to space
let mapleader=" "

" syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" ==== python stuff ====
autocmd Filetype python setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4 autoindent
" flag whitespaces
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
" "python with virtualenv support
" py << EOF
" import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"  execfile(activate_this, dict(__file__=activate_this))
"EOF
"
" ====
autocmd Filetype cpp setlocal expandtab tabstop=3 shiftwidth=3
autocmd Filetype c setlocal expandtab tabstop=3 shiftwidth=3
autocmd Filetype sh setlocal expandtab tabstop=3 shiftwidth=3
autocmd Filetype javascript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

" auto complete window
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" use C-L to get back to command mode
inoremap <C-L> <Esc>
inoremap jk <Esc>`^

" stay marked when using < > to indent
vnoremap < <gv
vnoremap > >gv

" put search on -
nnoremap - /

" Put vim files in the temp directory instead of the current directory
set directory=~/.vim/swapfiles//

syntax on

set encoding=UTF-8

" ctrl-p use current file
let g:ctrlp_working_path_mode = 'ra'

" nerdtree key
map <C-t> :NERDTreeToggle<CR>

if has('gui_running')
  set background=dark
  colorscheme solarized
else
  colorscheme zenburn
  "colorscheme Monokai
endif

" autopep8 on save
let g:autopep8_on_save = 1
let g:autopep8_disable_show_diff=1
