"_________________________ GENERAL SETTINGS ___________________________________
syntax on
set encoding=utf-8
set clipboard=unnamed "autoselect autoselectml
set guifont=VictorMono_NFM:h11:cANSI:qDEFAULT
set termguicolors
set guioptions-=m
set guioptions-=r
set guioptions-=l
set guioptions-=T
set backspace=indent,eol,start
set colorcolumn=80
set columns=130
set lines=26
set number
set numberwidth=6
set ruler
set cursorline
set cursorlineopt=both "screenline, number, line
set guicursor=n-v-c:block-Cursor,o:hor50,i-ci:ver25-iCursor,sm:hor35
set selection=inclusive "exclusive
set scroll=3
set scrolloff=9
set cmdheight=1
set showmode
set laststatus=2
set foldenable
set list
set fillchars=vert:│,fold:\\u2508,foldopen:,foldclose:,eob:\ ,lastline:\ ,
set listchars=tab:│\ ,space:\ ,trail:\ , "eol:\\u21b2,
set linespace=0
set nrformats=bin,octal,hex
"set showcmd
" --- SEARCH ---
set history=100
set nohlsearch
set incsearch
set ignorecase
set smartcase
set wildmenu
" --- INDENTATION (TAB) ---
set noexpandtab
set autoindent
set shiftwidth=4
set startofline
set tabstop=4
set smartindent
set softtabstop=4
set shiftround
set nowrap

"______________________________ KeyMaps _______________________________________
let mapleader=' '

" --- NORMAL MODE ---
nmap i <Up>
nmap j <Left>
nmap k <Down>
nmap l <Right>
nmap o <S-O>
nnoremap m o
nnoremap h a
nnoremap a i
nnoremap vv <C-v>
nnoremap <Leader>i gg
nnoremap <Leader>j <Home>
nnoremap <Leader>k G
nnoremap <Leader>l <End>
nnoremap ; :
nnoremap . >>
nnoremap , <<
nnoremap <Leader>q :wq<CR>
nnoremap <Leader>! :q!<CR>
nnoremap <Leader>w :w<CR>
nnoremap <Leader>rn :set rnu!<CR>
nnoremap <A-m> :if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif<CR>
nnoremap <A-t> :if &go=~#'T'<Bar>set go-=T<Bar>else<Bar>set go+=T<Bar>endif<CR>
nnoremap <A-r> :if &go=~#'r'<Bar>set go-=r<Bar>else<Bar>set go+=r<Bar>endif<CR>
nnoremap <F5> :source %<CR>

" --- INSERT MODE ---
inoremap <A-n> <Esc>
inoremap <A-h> <BS>
inoremap <A-k> <Down>
inoremap <A-i> <Up>
inoremap <A-j> <Left>
inoremap <A-l> <Right>
inoremap <Leader><Space> <TAB>

" --- VISUAL MODE ---
vmap i <Up>
vmap j <Left>
vmap k <Down>
vmap l <Right>
vnoremap <Leader>i gg
vnoremap <Leader>j <Home>
vnoremap <Leader>k G
vnoremap <Leader>l <End>
vnoremap v <Esc>
vnoremap . >
vnoremap , <

" _____________________________ HIGHLIGHTS  ___________________________________
highlight clear

highlight Normal gui=NONE guibg=#0b0b0e guifg=#eaffff "Default bg and fg.
highlight ColorColumn gui=NONE guibg=#ee5844 guifg=NONE "column 80.
highlight Cursor gui=NONE guibg=#0bfeca guifg=#010101 "Cursor normal mode.
highlight iCursor gui=NONE guibg=#0bfeca guifg=#010101 "Cursor insert mode.
highlight CursorLine gui=NONE guibg=#1b1b1e guifg=NONE "Cursor line.
highlight CursorLineNr gui=NONE guibg=#3c494b guifg=#0bff0b "Current number line.
highlight LineNr gui=NONE guibg=#3c3c3c guifg=#a0b3c3 "Numbers column.
highlight StatusLine gui=NONE guibg=#3c3c3c guifg=#4bff20 "Status line.
highlight EndOfBuffer gui=NONE guibg=bg guifg=bg "Empty lines (~).

" --- SYNTAX ---
highlight Statement gui=NONE guifg=#00bbfe guibg=NONE
highlight Boolean gui=italic guifg=#ae81ff guibg=NONE
highlight Comment gui=italic guifg=#c3c2c3 guibg=NONE
highlight Keyword gui=NONE guifg=#00bbfe guibg=NONE
highlight Constant gui=NONE guifg=#e6edf3 guibg=NONE
highlight Identifier gui=NONE guifg=#d7fdfd guibg=NONE
highlight Number gui=NONE guifg=#ff740f guibg=NONE
highlight Float gui=NONE guifg=#ff740f guibg=NONE
highlight String gui=NONE guifg=#00ca3d guibg=NONE
highlight Character gui=NONE guifg=#00ca3d guibg=NONE
highlight Function gui=NONE guifg=#ffff64 guibg=NONE
highlight Conditional gui=NONE guifg=#f379f7 guibg=NONE
highlight Repeat gui=NONE guifg=#f379f7 guibg=NONE
highlight Operator gui=NONE guifg=#ff6767 guibg=NONE
highlight Delimiter gui=NONE guifg=#fcfc36 guibg=NONE
highlight Type gui=NONE guifg=#00ffca guibg=NONE
highlight Label gui=NONE guifg=#ae81ff guibg=NONE
highlight Error gui=underline guifg=#ff8080 guibg=NONE
highlight PreProc gui=NONE guifg=#ff82c8 guibg=NONE
