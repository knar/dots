" vimrc

" ensure vim-plug is installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	augroup PLUG
		au!
		autocmd VimEnter * PlugInstall
    augroup END
endif

" plugins
call plug#begin('~/.local/share/nvim/plugged')
	Plug 'sheerun/vim-polyglot'
	Plug 'sainnhe/gruvbox-material'
	Plug 'cloudhead/neovim-fuzzy'
call plug#end()


" encoding
set encoding=utf-8
set title
set tabstop=4 shiftwidth=4
set number relativenumber cursorline
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
nnoremap <leader>ls :ls<cr>:b<space>

" jk for escape
inoremap jk <esc>

" fzy to open files
nnoremap <leader>e :FuzzyOpen<CR>

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
