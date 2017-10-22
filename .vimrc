"""""""" VIM-PLUG
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim' 
Plug 'morhetz/gruvbox'
" :PlugInstall to install new plugins
call plug#end()

"""""""" THEME
set termguicolors
colorscheme gruvbox
set background=dark  " setting dark mode
syntax enable

"""""""" NERDTREE
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1  " show hidden files
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  " closes vim if NERDTree is the last window

"""""""" VIM OPTIONS
set tabstop=2
set number  " show current line number
set relativenumber  " show relative line numbers
