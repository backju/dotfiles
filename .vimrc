" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
call plug#end()

set termguicolors
colorscheme gruvbox
syntax on

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

