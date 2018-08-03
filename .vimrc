"""""""" VIM-PLUG
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug '/usr/local/opt/fzf'
" Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'tomasr/molokai'
" :PlugInstall to install new plugins
call plug#end()

""""""" THEME
color molokai
let g:molokai_original = 1
"hi Normal guibg=NONE ctermbg=NONE

syntax on

"""""""" NERDTREE
map <C-n> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1  " show hidden files
let NERDTreeMinimalUI=1  " hide Press ? for help
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif  " closes vim if NERDTree is the last window

"""""""" FZF
nnoremap <c-p> :FZF<cr>

"""""""" VIM OPTIONS
let mapleader      = ' '

:set mouse=a
:nmap <LeftMouse> <nop>
:imap <LeftMouse> <nop>
:vmap <LeftMouse> <nop>
:nmap <2-LeftMouse> <nop>
filetype plugin indent on
set tabstop=2 " show existing tab with 4 spaces width
set shiftwidth=2 " when indenting with '>', use 4 spaces width
set expandtab " On pressing tab, insert 4 spaces

set number  " show line numbers in gutter
if exists('+relativenumber')
  set relativenumber  " show relative numbers in gutter
endif

set cursorline  " highlight current line
"highlight clear LineNr
set scrolloff=3  " start scrolling 3 lines before edge of viewport
set sidescrolloff=3  " same as scolloff, but for columns
"set noruler

if has('linebreak')
  let &showbreak='⤷ '                 " ARROW POINTING DOWNWARDS THEN CURVING RIGHTWARDS (U+2937, UTF-8: E2 A4 B7)
endif

highlight Comment cterm=italic
"set t_ZH=^[[3m
"set t_ZR=^[[23m

if has('windows')
  set splitbelow                      " open horizontal splits below current window
endif

if has('vertsplit')
  set splitright                      " open vertical splits to the right of the current window
endif

if v:version > 703 || v:version == 703 && has('patch541')
  set formatoptions+=j                " remove comment leader when joining comment lines
endif

set highlight+=N:DiffText             " make current line number stand out a little
set highlight+=c:LineNr               " blend vertical separators with line numbers

"highlight ColorColumn guibg=#2d2d2d ctermbg=246
"call matchadd('ColorColumn', '\%81v\s*\zs\S', 100)


let g:fzf_prefer_tmux = 1
" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }


set laststatus=2
function! GitBranch()
  return system("git rev-parse -- abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':' '
endfunction

set statusline=                       " Custom status line
set statusline+=%#PmenuSel#           " Show git branch if it exists
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f                  " Show file name
set statusline+=%m\                   " Show whether file has been modified
set statusline+=%=                    " Right align the following
set statusline+=%#CursorColumn#
set statusline+=\ %y                  " Filetype
set statusline+=\ %{&fileencoding?&fileencoding:&encoding} " File encoding
set statusline+=\[%{&fileformat}\]    " File format
set statusline+=\ %p%%                " Percentage through file
set statusline+=\ %l:%c               " Line number:Column number
set statusline+=\



" 80 chars/line
set textwidth=0
if exists('&colorcolumn')
  set colorcolumn=80
endif

