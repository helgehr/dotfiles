syntax on

set noerrorbells
set smartindent
set nu
set nowrap
set ignorecase
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set tabstop=4
let mapleader=","
let maplocalleader="\\"

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
" Wait for ycm python3.9 support
"Plug 'ycm-core/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'
"Plug 'ervandew/supertab'

call plug#end()

let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

colorscheme gruvbox
set background=dark
