" Author: Jacob Jauregui.
" GitHub: github.com/jacobjauregui/vimfiles
" Update: July 20, 2025.
" Description: Custom settings for Gvim (GUI Version)

au GUIEnter * simalt ~x
set guioptions=degLt
set nocompatible
set runtimepath=$HOME\\vimfiles,$PROGRAMFILES\\Vim\\vim91
set packpath=$HOME\\vimfiles\\pack,$HOME\\vimfiles\\plugged,$HOME\\vimfiles\\plugin,$PROGRAMFILES\\Vim\\vim91\\pack,$PROGRAMFILES\\Vim\\vim91\\plugged,$PROGRAMFILES\\Vim\\vim91\\plugin
set helpfile=$PROGRAMFILES\\Vim\\vim91\\doc\\help.txt
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
"set casemap=internal,keepascii
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
set sidescrolloff=3
"set display=
set fillchars=eob:\ ,fold:≤░ì┤,foldclose:Γû╕,foldopen:Γû╛,foldsep:Γöå,lastline:\ ,vert:Γöè
set cmdheight=1
"set columns=80
"set lines=24
"set window=54
set nolazyredraw
set redrawtime=1000
set writedelay=0
set list
set listchars=space:\ ,tab:Γöè\ ,trail:\ , "eol:\\u21b2,
"'|Γöé', '┬ª', 'Γöå', 'Γöè'
set number
set norelativenumber
set numberwidth=8
set conceallevel=0
"set concealcursor=
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
set laststatus=2
set equalalways
set eadirection=both
"set winheight=54
"set winminheight=10
"set winfixbuf=0
"set nowinfixheight
"set nowinfixwidth
"set winwidth=192
"set winminwidth=20

"___StatusLine {{{
function CurrentMode()
	if mode() == "i"
		highlight VimMode gui=bold guibg=#002d6f guifg=#c2c3c1
		highlight SepMode gui=NONE guibg=#221829 guifg=#002d6f
		highlight StatusLine gui=NONE guibg=#221829 guifg=#002d6f font='0xProto_Nerd_Font_Mono'
		return '≤░½╢NSERT ≤░Å¬'
	elseif mode() == "v"
		highlight VimMode gui=bold guibg=#023140 guifg=#c2c3c1
		highlight SepMode gui=NONE guibg=#221829 guifg=#023140
		highlight StatusLine gui=NONE guibg=#221829 guifg=#023140 font='0xProto_Nerd_Font_Mono'
		return '≤░¼âISUAL ≤▒¬╢'
	elseif mode() == "c"
		highlight VimMode gui=bold guibg=#303030 guifg=#c2c3c1
		highlight SepMode gui=NONE guibg=#221829 guifg=#303030
		highlight StatusLine gui=NONE guibg=#221829 guifg=#303030 font='0xProto_Nerd_Font_Mono'
		return '≤░½░OMMAND εÜâ'
	elseif mode() == "n"
		highlight VimMode gui=bold guibg=#063a00 guifg=#c2c3c1
		highlight SepMode gui=NONE guibg=#221829 guifg=#063a00
		highlight StatusLine gui=NONE guibg=#221829 guifg=#319897 font='0xProto_Nerd_Font_Mono'
		return '≤░½╗ORMAL ∩ì»'
	else
		highlight VimMode gui=bold guibg=#023140 guifg=#c2c3c1
		highlight SepMode gui=NONE guibg=#221829 guifg=#023140
		highlight StatusLine gui=NONE guibg=#221829 guifg=#023140 font='0xProto_Nerd_Font_Mono'
		return '≤░¼âBLOCK ≤▒¬╖'
	endif
	:redrawstatus
endfunction

function FtIcon()
	if &ft == 'vim'
		highlight FileIcon gui=bold guibg=#102438 guifg=#069323
		return 'εÿ½'
	elseif &ft == 'python'
		highlight FileIcon gui=bold guibg=#102438 guifg=#ffdd55
		return 'ε£╝'
	elseif &ft == 'html'
		highlight FileIcon gui=bold guibg=#102438 guifg=#dd4b25
		return 'ε£╢'
	elseif &ft == 'javascript'
		highlight FileIcon gui=bold guibg=#102438 guifg=#f5d33c
		return '∩ï«'
	elseif &ft == 'css'
		highlight FileIcon gui=bold guibg=#102438 guifg=#3b77ff
		return 'ε¥ë'
	elseif &ft == 'java'
		highlight FileIcon gui=bold guibg=#102438 guifg=#e32c2b
		return 'ε£╕'
	elseif &ft == 'cs'
		highlight FileIcon gui=bold guibg=#102438 guifg=#bb48cd
		return 'ε₧▓'
	elseif &ft == 'cpp'
		highlight FileIcon gui=bold guibg=#102438 guifg=#00427e
		return 'εÿ¥'
	elseif &ft == 'json'
		highlight FileIcon gui=bold guibg=#102438 guifg=#f5df20
		return 'εÿï'
	elseif &ft == 'xml'
		highlight FileIcon gui=bold guibg=#102438 guifg=#fe8217
		return '≤░ùÇ'
	else
		highlight FileIcon gui=bold guibg=#102438 guifg=#eaeaea
		return '∩à£'
	endif
endfunction
set statusline=%#SepMode#εâù%#VimMode#\ %{CurrentMode()}\ %#SepMode#εé░%#SepPath#εâù%#Path#\ %#FileIcon#%{FtIcon()}\ %#Path#%f\ %#SepPath#εé┤εé╡%=εé╖%#SepEncoding#εé╢%#Encoding#\UTF-8\ %#SepEncoding#εâû%#SepRuler#εé▓%#Ruler#\ εéí\ %l\/%L,\ εéú\ %c%V\ %#SepRuler#εâû\ 
"}}}

set showtabline=1
"set tabclose=
"set tabline=
"set guitablabel=
"set guitabtooltip
set clipboard=unnamed "autoselect autoselectml
set guiligatures=!\"#$%&()*+-./:<=>?@[]^_{\|~
set guioptions-=m
set guioptions-=r
set guioptions-=l
set guioptions-=T
set backspace=indent,eol,start
set ruler
set guicursor=n-v-c:block-nCursor,o:hor50,i-ci:ver10-iCursor-blinkwait300-blinkon200-blinkoff150,sm:hor35
set selection=old "exclusive inclusive
set noshowmode
set foldenable
set foldmethod=marker
"set foldclose=
"set foldopen=\\u2508
set linespace=0
set nrformats=bin,octal,hex
set noshowcmd
set noexpandtab
set autoindent
set shiftwidth=4
set startofline
set tabstop=4
set smartindent
set softtabstop=4
set shiftround
set history=100
set wildmenu
syntax on
set encoding=utf-8
set renderoptions=type:directx,geom:1,renmode:2,taamode:1
"set guifont=VictorMono_NFM_SemiBold:h12:W600:cANSI:qDRAFT
"set guifontset=VictorMono_NFM_SemiBold:h12:W600:cANSI:qDRAFT,0xProto_Nerd_Font_Mono:h12:cANSI:qDRAFT,ShureTech_Nerd_Font_Mono:h12:cANSI:qDRAFT
"set guifontwide=Terminess_Nerd_Font:h16:w8
set guifont=VictorMono_NFM_SemiBold:h14.4:w7.2:W600:cANSI:qDRAFT
set noeof
set viewdir=$HOME\\vimfiles\\view

so $HOME\\vimfiles\\custom\\keymaps.vim
so $HOME\\vimfiles\\custom\\highlights.vim
so $HOME\\vimfiles\\custom\\plugins.vim


set secure
