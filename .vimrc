"""""""" VIM-PLUG
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug '/usr/local/opt/fzf' 
Plug 'junegunn/fzf.vim' 
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'benmills/vimux'
" :PlugInstall to install new plugins
call plug#end()

"""""""" THEME
"set termguicolors
"colorscheme gruvbox
colorscheme solarized
set background=dark  " setting dark mode
"set background=light
syntax enable

"""""""" NERDTREE
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1  " show hidden files
let NERDTreeMinimalUI=1  " hide Press ? for help
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  " closes vim if NERDTree is the last window

"""""""" VIMUX
" Prompt for a command to run map
 map <Leader>vp :VimuxPromptCommand<CR>
"map <Leader>vm :VimuxPromptCommand("make ")<CR>
" Run last command executed by VimuxRunCommand
 map <Leader>vl :VimuxRunLastCommand<CR>
" Close vim tmux runner opened by VimuxRunCommand
 map <Leader>vq :VimuxCloseRunner<CR>
  " Clear the tmux history of the runner pane
 map <Leader>vc :VimuxClearRunnerHistory<CR>
let g:VimuxUseNearest = 1

"""""""" FZF
nnoremap <c-p> :FZF<cr>

"""""""" VIM OPTIONS
filetype plugin indent on
set tabstop=2 " show existing tab with 4 spaces width
set shiftwidth=2 " when indenting with '>', use 4 spaces width
set expandtab " On pressing tab, insert 4 spaces

set number  " show current line number
set relativenumber  " show relative line numbers

highlight Comment cterm=italic
"highlight ColorColumn guibg=#2d2d2d ctermbg=246
"call matchadd('ColorColumn', '\%81v\s*\zs\S', 100)
