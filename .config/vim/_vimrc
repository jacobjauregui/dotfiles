" Author: Jacob Jauregui.
" GitHub: github.com/jacobjauregui
" Update: July 20, 2025.
" Description: Custom settings for Vim (Terminal version)


set nocompatible
set runtimepath=$HOME\\vimfiles,$PROGRAMFILES\\Vim\\vim91
set packpath=$HOME\\vimfiles\\pack,$HOME\\vimfiles\\plugged,$HOME\\vimfiles\\plugin,$PROGRAMFILES\\Vim\\vim91\\pack,$PROGRAMFILES\\Vim\\vim91\\plugged,$PROGRAMFILES\\Vim\\vim91\\plugin
set helpfile=$PROGRAMFILES\\Vim\\vim91\\doc\\help.txt

" SEARCH
set whichwrap=b,s
set startofline
set path+=.,$HOME\\vimfiles\\autoload,$HOME\\vimfiles\\syntax,$HOME\\vimfiles\\syntax\\after,$HOME\\vimfiles\\syntax\\after\\ftplugin,$HOME\\vimfiles\\syntax\\after\\indent,$HOME\\vimfiles\\syntax\\after\\syntax
set cdhome
set autochdir
set autoshelldir
set wrapscan
set incsearch
set magic
set ignorecase
set smartcase
set casemap=internal,keepascii

" DISPLAY TEXT
set scroll=0
set nosmoothscroll
set scrolloff=3
set nowrap
set nolinebreak
set nobreakindent
"set breakindentopt=
"set breakat=\ \	!@*-+;:,./?
"set showbreak=
set sidescroll=5
set sidescrolloff=4
"set display=
set fillchars=eob:\ ,fold:≤░ì┤,foldclose:Γû╕,foldopen:Γû╛,foldsep:Γöå,lastline:\ ,vert:Γöè
set cmdheight=1
set columns=192
set lines=54
set window=54
set nolazyredraw
set redrawtime=2000
set writedelay=0
set list
set listchars=space:\ ,tab:Γöå\ ,trail:\ , "eol:\\u21b2,
"'|Γöé', '┬ª', 'Γöå', 'Γöè'
set number
set norelativenumber
set numberwidth=8
set conceallevel=0
"set concealcursor=

" SYNTAX, HIGHLIGHTING n' SPELL
set background=dark
set filetype=vim
set syntax=vim
set synmaxcol=3000
set nohlsearch
"set wincolor=
set termguicolors
set nocursorcolumn
set cursorline
set cursorlineopt=both "screenline, number, line
set colorcolumn=95
set nospell
set spelllang=en

" --- Multiple windows
set laststatus=2
 
set equalalways
set eadirection=both " ver, hor, both
"set winheight=54
"set winminheight=10
"set winfixbuf=0
"set nowinfixheight
"set nowinfixwidth
"set winwidth=192
"set winminwidth=20

" --- Multiple Pages ---
set showtabline=1
"set tabclose=
"set tabline=
"set guitablabel=
"set guitabtooltip=

" --- Terminal ---
"set term=builtin_gui
"set ttytype=builtin_gui
set ttybuiltin
set ttyfast
set xtermcodes
set noweirdinvert
set keyprotocol=kitty:kitty,foot:kitty,wezterm:kitty,xterm:mok2
set esckeys
set scrolljump=1
set ttyscroll=999
set guicursor=n-v-c:block-nCursor,o:hor50,i-ci:ver10-iCursor-blinkwait300-blinkon200-blinkoff150,sm:hor35
set title
set titlelen=85
"set titlestring=
set titleold=Thanks\ for\ flying\ Vim
set icon
"set iconstring=
set restorescreen

" --- Mouse ---
set mouse=a
set nomousefocus
set noscrollfocus
set mousehide
set nomousemoveevent
set mousemodel=popup "extend, popup, popup_setpos
set mousetime=500
"set ttymouse= "xterm, xterm2, sgr
"set mouseshape=i-r:beam,s:updown,sd:udsizing,vs:leftright,vd:lsrisizing,m:no,ml:up:arrow,v:rightup-arrow

" --- GUI ---
"set guifont=VictorMono\ NFM\ Medium:h11:cANSI:qDEFAULT
"set guifontwide=
"set guioptions=egLtm
"set renderoptions=
"set guipty
"set browsedir=last "last, buffer, current
"set langmenu=
"set menuitems=25
"set winaltkeys=menu
"set linespace=0
"set balloondelay=600
"set noballooneval
"set noballoonevalterm
"set balloonexpr=

" --- Message and Info ---
set noterse
set shortmess=filnxtToOS
"set messagesopt=hit-enter,history:500
set showcmd
set showcmdloc=last
set showmode
set ruler
"set rulerformat=
set report=2
set verbose=0
set more
set noconfirm
set noerrorbells
set novisualbell
set helplang=En

" --- Selection ---
set selection=old "inclusive exclusive
"set selectmode=mouse, key, cmd
set clipboard=unnamed "autoselect autoselectml
"set keymodel=startsel, stopsel
set undolevels=1000
set noundofile
set undodir=.
set undoreload=10000
set nomodified
set readonly
set modifiable
set textwidth=0
set wrapmargin=0
set backspace=indent,eol,start
set formatoptions=tcq
set complete=.,w,b,u,t,i
set completeopt=menu,preview
set completeitemalign=abbr,kind,menu
set showmatch
set matchtime=5
set matchpairs=(:),{:},[:]
set joinspaces
set nrformats=alpha,bin,octal,hex

" --- Tabs and Indenting ---
set tabstop=4
set shiftwidth=4
"set vartabstop=4
"set varsofttabstop=
set softtabstop=4
set nosmarttab
set shiftround
set noexpandtab
set autoindent
set smartindent
set cindent
set nocopyindent
set nopreserveindent
set nolisp

" --- Folding ---
set foldenable
set foldlevel=0
set foldlevelstart=-1
set foldcolumn=0
set foldtext=foldtext()
set foldclose=
set foldopen=block,hor,mark,percent,quickfix,search,tag,undo
set foldminlines=1
set commentstring=/*\ %s\ */
set foldmethod=manual
set foldexpr=0
set foldignore=#
set foldmarker={{{,}}}
set foldnestmax=20

" --- Diff ---
set diff
set diffopt=internal,filler,closeoff
"set foldexpr=
"set patchexpr=

" --- Mapping ---
set maxmapdepth=1000
set remap
set timeout
set nottimeout
set timeoutlen=200
set ttimeoutlen=-1

set modeline
set nomodelineexpr
set modelines=5
set nobinary
set endofline
set endoffile
set fixendofline
set nobomb
set fileformat=dos "unix, mac
set fileformats=dos,unix
set write
set nowritebackup
set nobackup
set backupskip=$HOME\\AppData\\Local\\Temp\\*
set backupcopy=auto
set backupext=.bak
set noautowrite
set noautowriteall
set nowriteany
set noautoread
set nofsync
set noshortname
set cryptmethod=blowfish2

set history=100
set wildmenu
syntax on
set encoding=utf-8
set viewdir=$HOME\\vimfiles\\view
let &t_SI = "\<esc>[5 q"
let &t_EI = "\<esc>[1 q"
let &t_SR = "\<esc>[3 q"


"{{{ Keymaps
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
"}}}

"{{{Highlights
highlight clear
highlight Normal            term=NONE cterm=NONE gui=NONE guibg=#090822 guifg=#c4c4c4
highlight ColorColumn       term=NONE cterm=NONE gui=NONE guibg=#023140 guifg=NONE   
"highlight Cursor           term=NONE cterm=NONE gui=NONE guibg=#eaeaea guifg=#010101
"highlight iCursor          term=NONE cterm=NONE gui=NONE guibg=#eaeaea guifg=#010101
highlight CursorLine        term=NONE cterm=NONE gui=NONE guibg=#100f2c guifg=NONE   
highlight CursorLineNr      term=NONE cterm=NONE gui=NONE guibg=#090822 guifg=#228493
highlight LineNr            term=NONE cterm=NONE gui=NONE guibg=#090822 guifg=#023140

highlight StatusLine        term=NONE cterm=NONE gui=NONE guibg=#131424 guifg=#319897
highlight VimMode           term=NONE cterm=NONE gui=bold guibg=#319897 guifg=#0c2829
highlight SepMode           term=NONE cterm=NONE gui=NONE guibg=#000000 guifg=#c3c2c1
highlight FileIcon          term=NONE cterm=NONE gui=bold guibg=#282f3e guifg=#00ff00
highlight SepFileIcon       term=NONE cterm=NONE gui=NONE guibg=#0c2829 guifg=#319897
highlight Path              term=NONE cterm=NONE gui=bold guibg=#282f3e guifg=#319897
highlight SepPath           term=NONE cterm=NONE gui=NONE guibg=#171e2d guifg=#282f3e
highlight Ruler             term=NONE cterm=NONE gui=NONE guibg=#023140 guifg=#c2c3c1
highlight SepRuler          term=NONE cterm=NONE gui=NONE guibg=#171e2d guifg=#023140
highlight SepUnderline      term=NONE cterm=NONE gui=NONE guibg=#171e2d guifg=#023140

highlight EndOfBuffer       term=NONE  cterm=NONE  gui=NONE      guibg=bg      guifg=bg
highlight NonText           term=NONE  cterm=NONE  gui=NONE      guibg=bg      guifg=bg
highlight Statement         term=NONE  cterm=NONE  gui=NONE      guifg=#4ec9b0 guibg=NONE
highlight Boolean           term=NONE  cterm=NONE  gui=NONE      guifg=#ae81ff guibg=NONE
highlight Comment           term=NONE  cterm=NONE  gui=italic    guifg=#8c8c8c guibg=NONE
highlight Folded            term=NONE  cterm=NONE  gui=NONE      guifg=#245362 guibg=NONE
highlight FoldColumn        term=NONE  cterm=NONE  gui=NONE      guifg=#c2c1c3 guibg=NONE
highlight Keyword           term=NONE  cterm=NONE  gui=NONE      guifg=#00bbfe guibg=NONE
highlight Constant          term=NONE  cterm=NONE  gui=NONE      guifg=#fafafa guibg=NONE
highlight Identifier        term=NONE  cterm=NONE  gui=NONE      guifg=#d8fdfd guibg=NONE
highlight Number            term=NONE  cterm=NONE  gui=NONE      guifg=#99d9fd guibg=NONE
highlight Float             term=NONE  cterm=NONE  gui=NONE      guifg=#ff740f guibg=NONE
highlight String            term=NONE  cterm=NONE  gui=NONE      guifg=#00ca3d guibg=NONE
highlight Character         term=NONE  cterm=NONE  gui=NONE      guifg=#00ca3d guibg=NONE
highlight Function          term=NONE  cterm=NONE  gui=NONE      guifg=#ffff64 guibg=NONE
highlight Conditional       term=NONE  cterm=NONE  gui=NONE      guifg=#f379f7 guibg=NONE
highlight Repeat            term=NONE  cterm=NONE  gui=NONE      guifg=#f379f7 guibg=NONE
highlight Operator          term=NONE  cterm=NONE  gui=NONE      guifg=#ff6767 guibg=NONE
highlight Delimiter         term=NONE  cterm=NONE  gui=NONE      guifg=#fcfc36 guibg=NONE
highlight Type              term=NONE  cterm=NONE  gui=NONE      guifg=#00ffca guibg=NONE
highlight Typedef           term=NONE  cterm=NONE  gui=NONE      guifg=#00ffca guibg=NONE
highlight Label             term=NONE  cterm=NONE  gui=NONE      guifg=#d6ad84 guibg=NONE
highlight Error             term=NONE  cterm=NONE  gui=undercurl guifg=#ff8080 guibg=NONE
highlight PreProc           term=NONE  cterm=NONE  gui=NONE      guifg=#ff82c8 guibg=NONE

highlight htmlComment       term=NONE  cterm=NONE  gui=NONE       guifg=#878787 guibg=NONE
highlight htmlH1            term=NONE  cterm=NONE  gui=NONE       guifg=#c2c1c3 guibg=NONE
highlight htmlTitle         term=NONE  cterm=NONE  gui=NONE       guifg=#ffffff guibg=NONE
highlight htmlHead          term=NONE  cterm=NONE  gui=NONE       guifg=#0000ff guibg=NONE
highlight htmlString        term=NONE  cterm=NONE  gui=NONE       guifg=#fe8d59 guibg=NONE
highlight htmlTagName       term=NONE  cterm=NONE  gui=NONE       guifg=#7cacf8 guibg=NONE
highlight htmlTag           term=NONE  cterm=NONE  gui=NONE       guifg=#878787 guibg=NONE
highlight htmlEndTag        term=NONE  cterm=NONE  gui=NONE       guifg=#878787 guibg=NONE
highlight htmlValue         term=NONE  cterm=NONE  gui=NONE       guifg=#fe8d59 guibg=NONE
highlight htmlScriptTag     term=NONE  cterm=NONE  gui=NONE       guifg=#ffff00 guibg=NONE

highlight cssTagName        term=NONE  cterm=NONE  gui=NONE       guifg=#ffff64 guibg=NONE
highlight cssAttr           term=NONE  cterm=NONE  gui=NONE       guifg=#fe8d59 guibg=NONE
highlight cssProp           term=NONE  cterm=NONE  gui=NONE       guifg=#00ffca guibg=NONE
highlight cssComment        term=NONE  cterm=NONE  gui=NONE       guifg=#108811 guibg=NONE
highlight cssStringQ        term=NONE  cterm=NONE  gui=NONE       guifg=#fe8d59 guibg=NONE
highlight cssStringQQ       term=NONE  cterm=NONE  gui=NONE       guifg=#fe8d59 guibg=NONE

highlight csType            term=NONE  cterm=NONE  gui=NONE       guifg=#00ffca guibg=NONE
highlight csUserType        term=NONE  cterm=NONE  gui=NONE       guifg=#00ffca guibg=NONE
highlight csNewType         term=NONE  cterm=NONE  gui=NONE       guifg=#00ffca guibg=NONE
highlight csClassType       term=NONE  cterm=NONE  gui=NONE       guifg=#00ffca guibg=NONE
highlight csGeneric         term=NONE  cterm=NONE  gui=NONE       guifg=#00ffca guibg=NONE
highlight csStatement       term=NONE  cterm=NONE  gui=NONE       guifg=#00bbff guibg=NONE
highlight csStorage         term=NONE  cterm=NONE  gui=NONE       guifg=#00bbff guibg=NONE
highlight csClass           term=NONE  cterm=NONE  gui=NONE       guifg=#00bbfe guibg=NONE
highlight csNew             term=NONE  cterm=NONE  gui=NONE       guifg=#00bbfe guibg=NONE
highlight csUsingModifier   term=NONE  cterm=NONE  gui=NONE       guifg=#00bbfe guibg=NONE
highlight csManagedmodifier term=NONE  cterm=NONE  gui=NONE       guifg=#00bbfe guibg=NONE
highlight csAccessModifier  term=NONE  cterm=NONE  gui=NONE       guifg=#00bbfe guibg=NONE
highlight csModifier        term=NONE  cterm=NONE  gui=NONE       guifg=#00bbfe guibg=NONE
highlight csNull            term=NONE  cterm=NONE  gui=NONE       guifg=#00bbfe guibg=NONE
highlight csParens          term=NONE  cterm=NONE  gui=NONE       guifg=#ffff64 guibg=NONE
highlight csBraces          term=NONE  cterm=NONE  gui=NONE       guifg=#ffff64 guibg=NONE
highlight csUserMethod      term=NONE  cterm=NONE  gui=NONE       guifg=#ffff64 guibg=NONE
highlight csMethod          term=NONE  cterm=NONE  gui=NONE       guifg=#ffff64 guibg=NONE
highlight csEndColon        term=NONE  cterm=NONE  gui=NONE       guifg=#eaeaea guibg=NONE
highlight csIdentifier      term=NONE  cterm=NONE  gui=NONE       guifg=#eaeaea guibg=NONE
highlight csUserIdentifier  term=NONE  cterm=NONE  gui=NONE       guifg=#eaeaea guibg=NONE
highlight csNamespaceAlias  term=NONE  cterm=NONE  gui=NONE       guifg=#eaeaea guibg=NONE
highlight csConstant        term=NONE  cterm=NONE  gui=NONE       guifg=#99dffd guibg=NONE
highlight csUserInterface   term=NONE  cterm=NONE  gui=NONE       guifg=#8abf12 guibg=NONE
highlight csSummary         term=NONE  cterm=NONE  gui=NONE       guifg=#00ca22 guibg=NONE
highlight csBoolean         term=NONE  cterm=NONE  gui=NONE       guifg=#ae81ff guibg=NONE
highlight csConditional     term=NONE  cterm=NONE  gui=NONE       guifg=#f379f7 guibg=NONE
highlight csRepeat          term=NONE  cterm=NONE  gui=NONE       guifg=#f379f7 guibg=NONE
"highlight csLabel          term=NONE  cterm=NONE  gui=NONE       guifg=#d6ad84 guibg=NONE
"}}}

set secure
