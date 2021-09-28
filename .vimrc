"""" Enable Vundle: vim plugin manager

" required before Vundle initialization
" set nocompatible        " disable compatibility mode with vi
" filetype off            " disable filetype detection (but re-enable later, see below)

" set the runtime path to include Vundle, and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()
" Plugin 'VundleVim/Vundle.vim'
" Plugin 'wting/rust.vim' " enable syntax highlighting for rust
" call vundle#end()


"""" Basic Behavior

set number              " show line numbers
set wrap                " wrap lines
set encoding=utf-8      " set encoding to UTF-8 (default was "latin1")
set mouse=a             " enable mouse support (might not work well on Mac OS X)
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw screen only when we need to
set showmatch           " highlight matching parentheses / brackets [{()}]
"set laststatus=2        " always show statusline (even with only single window)
"set ruler               " show line and column number of the cursor on right side of statusline
set number relativenumber
set visualbell          " blink cursor on error, instead of beeping

set ignorecase
set smartcase

"set listchars=eol:?,tab:>?,trail:~,extends:>,precedes:<,space:_
"set list
set noswapfile
"""" Key Bindings

" move vertically by visual line (don't skip wrapped lines)
nmap j gj
nmap k gk

"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

"""" Vim Appearance

" put colorscheme files in ~/.vim/colors/
"set background=dark    " configure Vim to use brighter colors
set t_Co=256              " fix for bg being too bright
"colorscheme solarized     " good colorschemes: murphy, slate, molokai, badwolf, solarized

autocmd vimenter * colorscheme gruvbox
set background=dark    " configure Vim to use brighter colors

hi CursorLine term=bold cterm=bold guibg=Grey40

" use filetype-based syntax highlighting, ftplugins, and indentation
syntax enable
filetype plugin indent on

" Pathegon

execute pathogen#infect()
syntax on
set syntax=whitespace
"set lcs+=space:.
filetype plugin indent on

"""" Tab settings

set tabstop=4           " width that a <TAB> character displays as
set expandtab           " convert <TAB> key-presses to spaces
set shiftwidth=4        " number of spaces to use for each step of (auto)indent
set softtabstop=4       " backspace after pressing <TAB> will remove up to this many spaces

set autoindent          " copy indent from current line when starting a new line
set smartindent         " even better autoindent (e.g. add indent after '{')

set nowrap

"""" Search settings

set incsearch           " search as characters are entered
set hlsearch            " highlight matches



"res +10
"res -10
"vertical resize +10
"vertical resize -10

"""" Miscellaneous settings that might be worth enabling

set cursorline         " highlight current line
"set autoread           " autoreload the file in Vim if it has been changed outside of Vim

nnoremap <CR> :noh<CR>

nnoremap * *N

" Modified
set path+=**
set wildmenu
set nocompatible

command! MakeTags !ctags -R --extra=+q --fields=+i .
nnoremap <C-j> :bprev<CR>                                                                            
nnoremap <C-k> :bnext<CR>

nnoremap <C-n> :tabprevious<CR>                                                                            
nnoremap <C-m> :tabnext<CR>

nnoremap <C-a> :Tabularize //l1r0<left><left><left><left><left>
vnoremap <C-a> :Tabularize //l1r0<left><left><left><left><left>
nnoremap <C-e> :Tabularize //l1r1<left><left><left><left><left>
vnoremap <C-e> :Tabularize //l1r1<left><left><left><left><left>

" turn off search highlighting with <CR> (carriage-return)
nnoremap <CR> :nohlsearch<CR><CR>

nmap ,n :call setreg('a', line('.'))<CR>

inoremap {      {}<Left>
inoremap (      ()<Left>
inoremap [      []<Left>
inoremap "      ""<Left>
inoremap '      ''<Left>

vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>''")

let mapleader = ","
" opens search results in a window w/ links and highlight the matches
"command! -nargs=+ Grep execute 'silent grep! -I -r -n --exclude *.{json,pyc} . -e <args>' | copen | execute 'silent /<args>'
" shift-control-* Greps for the word under the cursor
":nmap <leader>g :Grep <c-r>=expand("<cword>")<cr><cr>

:nmap <leader>g :vimgrep  **/*<left><left><left><left><left>

"Paste Mode:
:nmap <leader>p :set paste<cr>
:nmap <leader>P :set nopaste<cr>

