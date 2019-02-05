set encoding=utf-8
set title
set tabstop=4
set shiftwidth=4
set number
set t_Co=16
colorscheme termorrow
inoremap jk <esc>

set showbreak=↪\ 
set listchars=tab:→\ ,trail:·,eol:¬,nbsp:␣

" -----
" Plugins
" -
call plug#begin('~/.local/share/nvim/plugged')

" :F
Plug 'dylanaraps/fff.vim'

call plug#end()

" fff config, open with f in normal mode
let g:fff#split = "20vnew"
let g:fff#split_direction = "nosplitbelow nosplitright"
nnoremap f :F<CR>

" merlin (ocaml)
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

