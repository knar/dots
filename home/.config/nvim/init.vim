set title
set tabstop=4
set shiftwidth=4
set number

inoremap jk <esc>
	
set list listchars=nbsp:¬,tab:»·,trail:·,extends:>
set list!
noremap <F3> :set list!<CR>

autocmd BufWritePost ~/.Xresources !xrdb %

set t_Co=16
colorscheme termorrow
