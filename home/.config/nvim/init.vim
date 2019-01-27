set title

set t_Co=16
colorscheme termorrow

set tabstop=4
set shiftwidth=4

set number

inoremap jk <esc>
	
set list listchars=nbsp:¬,tab:»·,trail:·,extends:>
set list!
noremap <F3> :set list!<CR>


nnoremap f :F<CR>
let g:fff#split = "30vnew"
let g:fff#split_direction = "nosplitbelow nosplitright"

call plug#begin('~/.local/share/nvim/plugged')

"Open fff with :F
Plug 'dylanaraps/fff.vim'

call plug#end()
