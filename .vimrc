"""""""" VIM-PLUG
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug '/usr/local/opt/fzf' 
Plug 'junegunn/fzf.vim' 
Plug 'morhetz/gruvbox'
" :PlugInstall to install new plugins
call plug#end()

"""""""" THEME
if has('termguicolors')
  set termguicolors                   " use guifg/guibg instead of ctermfg/ctermbg in terminal
endif
colorscheme gruvbox
set background=dark  " setting dark mode
let g:gruvbox_contrast_dark='medium'
let g:gruvbox_bold = '1'
syntax enable
set cursorline  " highlight current line

"""""""" NERDTREE
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1  " show hidden files
let NERDTreeMinimalUI=1  " hide Press ? for help
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  " closes vim if NERDTree is the last window

"""""""" FZF
nnoremap <c-p> :FZF<cr>

"""""""" VIM OPTIONS
:set mouse=a
:map <LeftMouse> <nop>
filetype plugin indent on
set tabstop=2 " show existing tab with 4 spaces width
set shiftwidth=2 " when indenting with '>', use 4 spaces width
set expandtab " On pressing tab, insert 4 spaces

set number  " show line numbers in gutter
if exists('+relativenumber')
  set relativenumber  " show relative numbers in gutter
endif

set scrolloff=3  " start scrolling 3 lines before edge of viewport
set sidescrolloff=3  " same as scolloff, but for columns

if has('linebreak')
  let &showbreak='⤷ '                 " ARROW POINTING DOWNWARDS THEN CURVING RIGHTWARDS (U+2937, UTF-8: E2 A4 B7)
endif

highlight Comment cterm=italic

if has('windows')
  set splitbelow                      " open horizontal splits below current window
endif

if has('vertsplit')
  set splitright                      " open vertical splits to the right of the current window
endif

if v:version > 703 || v:version == 703 && has('patch541')
  set formatoptions+=j                " remove comment leader when joining comment lines
endif

"set highlight+=N:DiffText             " make current line number stand out a little
"set highlight+=c:LineNr               " blend vertical separators with line numbers

"highlight ColorColumn guibg=#2d2d2d ctermbg=246
"call matchadd('ColorColumn', '\%81v\s*\zs\S', 100)
