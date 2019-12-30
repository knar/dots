" vimrc

" plugins
call plug#begin('~/.local/share/nvim/plugged')
	Plug 'junegunn/fzf.vim'
	Plug 'sheerun/vim-polyglot'
	Plug 'sainnhe/gruvbox-material'
	Plug 'kristijanhusak/vim-hybrid-material'
call plug#end()

" encoding
set encoding=utf-8

" update window title
set title

" tabs
set tabstop=4 shiftwidth=4

" line numbers
set number cursorline

" invis chars for list mode
set showbreak=↪
set listchars=tab:→\ ,trail:·,eol:¬,nbsp:␣

" set colorscheme
set termguicolors
set background=dark
let g:gruvbox_material_background= 'hard'
colorscheme gruvbox-material

" buffers
set switchbuf=useopen
nnoremap <c-j> :bnext<CR>
nnoremap <c-k> :bprevious<CR>
nnoremap <c-h> <c-^>

" space for leader
let mapleader=" "

" space + ls to quiclky change buffers
nnoremap <leader>ls :ls<cr>:b<space>

" jk for escape
inoremap jk <esc>

" z to open fzf
nnoremap z :FZF<CR>
