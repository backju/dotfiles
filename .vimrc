" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
" :PlugInstall to install new plugins
call plug#end()

" colour theme
set termguicolors
colorscheme gruvbox
set background=dark " Setting dark mode
syntax enable

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1 " show hidden files
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " closes vim if NERDTree is the last window

