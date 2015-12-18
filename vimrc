set nocompatible              "be iMproved, required                                                                            
set encoding=utf-8
set number
set ruler
set showmatch
set noshowmode
"set lazyredraw
set cursorline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4 "a hard TAB displays as 4 columns
set softtabstop=4 "insert/delete 4 spaces when hitting a TAB/BACKSPACE
set shiftwidth=4 "round indent to multiple of 'shiftwidth'
set textwidth=80 "lines longer than 80 columns will be broken
set smarttab
set expandtab "insert spaces when hitting TABs

set lbr
set tw=500

set ai "align the new line indent with the previous line
set si "Smart indet
set wrap "Wrap lines
colorscheme mustang
syntax enable

filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
 
"let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'ekalinin/Dockerfile.vim' 

" Color scheme
"Plugin 'cschlueter/vim-mustang'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 " => Config Plugins
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-airline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set laststatus=2


"define the set of text to display for each mode.
"let g:airline_mode_map = {} " see source for the defaults
" or copy paste the following into your vimrc for shortform text
"let g:airline_mode_map = {
"    \ '__' : '-',
"    \ 'n'  : 'N',
"    \ 'i'  : 'I',
"    \ 'R'  : 'R',
"    \ 'c'  : 'C',
"    \ 'v'  : 'V',
"    \ 'V'  : 'V',
"    \ '^V' : 'V',
"    \ 's'  : 'S',
"    \ 'S'  : 'S',
"    \'^S'  : 'S',
"    \ }

let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
 
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''


let g:airline#extensions#tabline#enabled = 1

"enable/disable displaying buffers with a single tab. >
let g:airline#extensions#tabline#show_buffers = 1

"enable/disable displaying tabs, regardless of number.
let g:airline#extensions#tabline#show_tabs = 1

"configure filename match rules to exclude from the tabline.
"let g:airline#extensions#tabline#excludes = []

"enable/disable display preview window buffer in the tabline.
let g:airline#extensions#tabline#exclude_preview = 1

"configure how numbers are displayed in tab mode. >
"let g:airline#extensions#tabline#tab_nr_type = 0 " # of splits (default)
"let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
"let g:airline#extensions#tabline#tab_nr_type = 2 " splits and tab number

"enable/disable displaying tab number in tabs mode.
let g:airline#extensions#tabline#show_tab_nr = 1

"enable/disable displaying tab type (far right)
let g:airline#extensions#tabline#show_tab_type = 1


"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

let g:airlne#extensions#tabline#show_buffers=0
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'      
