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
set spelllang=en_us
set clipboard=unnamedplus
let mapleader=","
let maplocalleader="\\"

noremap <leader>w :update<CR>

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'ycm-core/YouCompleteMe'
Plug 'mbbill/undotree'
Plug 'lervag/vimtex'
Plug 'sirver/ultisnips'
"Plug 'ervandew/supertab'

call plug#end()

"if !exists('g:ycm_semantic_triggers')
"let g:ycm_semantic_triggers = {}
"endif
"au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

let g:tex_flavor='latex'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
"let g:vimtex_view_general_viewer = 'zathura'

let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

let g:gruvbox_guisp_fallback = "bg" "With this command spell highlighting is working

colorscheme gruvbox
set background=dark
