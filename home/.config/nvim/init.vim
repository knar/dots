" vimrc

" plugins
call plug#begin('~/.local/share/nvim/plugged')

	Plug 'junegunn/fzf.vim'
	Plug 'xuhdev/vim-latex-live-preview'
	Plug 'dylanaraps/fff.vim'
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

" font settings
let g:enable_italic_font = 1

" colors
set termguicolors
colorscheme hybrid_reverse

" jk for escape
inoremap jk <esc>

" f to open fff
nnoremap f :F<CR>

" invis chars for list mode
set showbreak=↪\
set listchars=tab:→\ ,trail:·,eol:¬,nbsp:␣

" Ocaml
autocmd FileType ml set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab

let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

" fff settings
let g:fff#split = "24vnew"
let g:fff#split_direction = "nosplitbelow nosplitright"
