if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	augroup PLUG
		au!
		autocmd VimEnter * PlugInstall
    augroup END
endif

call plug#begin('~/.local/share/nvim/plugged')
	Plug 'sheerun/vim-polyglot'
	Plug 'cloudhead/neovim-fuzzy'
	Plug 'itchyny/lightline.vim'
	Plug 'gruvbox-material/vim', {'as': 'gruvbox-material'}
call plug#end()

set encoding=utf-8
set title
set tabstop=4 shiftwidth=4
set number relativenumber cursorline
set showbreak=↪
set listchars=tab:→\ ,trail:·,eol:¬,nbsp:␣
set splitbelow
set splitright
set termguicolors
let g:gruvbox_material_background = 'hard'
colorscheme gruvbox-material
let g:lightline = {'colorscheme' : 'gruvbox_material'}
set noshowmode

let mapleader=" "
nnoremap <leader>ls :ls<cr>:b<space>
inoremap jk <esc>
nnoremap <leader>e :FuzzyOpen<CR>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap - <C-W><
nnoremap = <C-W>>
nnoremap _ <C-W>-
nnoremap + <C-W>+
nnoremap H 0
nnoremap L $
vnoremap H 0
vnoremap L $
