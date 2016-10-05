"let $PYTHONHOME=$HOME."/.pyenv/versions/2.7.11"
"set pythondll=$HOME/.pyenv/versions/2.7.11/lib/libpython2.7.dylib
"py import sys
" let g:jedi#force_py_version = 3
" let g:ycm_server_python_interpreter = '/usr/local/bin/python3'
" let $PYTHONHOME=$HOME."/.pyenv/versions/3.5.2"
" set pythonthreedll=$HOME/.pyenv/versions/3.5.2/lib/libpython3.5m.dylib
let $PYTHONHOME="/usr/local/Cellar/python3/3.5.2_2/Frameworks/Python.framework/Versions/3.5"
" set pythonthreedll=/usr/local/Cellar/python3/3.5.2_2/Frameworks/Python.framework/Versions/3.5/lib/libpython3.5m.dylib
" py3 import sys
set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
" UI
Plugin 'altercation/vim-colors-solarized'

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
Plugin 'SirVer/ultisnips'
" Plugin 'rking/ag.vim'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
Plugin 'Townk/vim-autoclose'
" Plugin 'kien/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
" Plugin 'Valloric/YouCompleteMe'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"
if has('gui_running')
  set background=dark
  colorscheme solarized
else
endif
set nu
set relativenumber
set guifont=Monaco:h12
" let g:pymode_python = 'python3'
" let g:pymode_motion = 0
" let g:pymode_lint = 0
let mapleader = ","
map <Leader>b :w<CR>:!python3 %<CR>
map <Leader>t :NERDTreeToggle<CR>
""ino " ""<left>
""ino ' ''<left>
""ino ( ()<left>
""ino [ []<left>
""ino { {}<left>
