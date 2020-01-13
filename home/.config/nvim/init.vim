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

" visuals
set termguicolors
set background=dark
let g:gruvbox_material_background = 'hard'
colorscheme gruvbox-material

" space for leader
let mapleader=" "

" better split defaults
set splitbelow
set splitright

" buffers
set switchbuf=useopen
nnoremap <leader>ls :ls<cr>:b<space>

" jk for escape
inoremap jk <esc>

" z to open fzf
nnoremap z :FZF<CR>

" split navigation
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>

" split resizing
nnoremap - <C-W><
nnoremap = <C-W>>
nnoremap _ <C-W>-
nnoremap + <C-W>+

" intuitive jump to start/end of line
nnoremap H 0
nnoremap L $
vnoremap H 0
vnoremap L $
