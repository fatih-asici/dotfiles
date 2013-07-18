" Enable pathogen
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()

set nocompatible        " Turn off compability mode with Vi, makes Vim more powerful
set backspace=2         " same as :set backspace=indent,eol,start
set autoindent          " Always set auto-indenting on

set viminfo='20,\"50    " Read/write a .viminfo file -- limit to only 50
set history=100         " Keep 100 lines of command history
set ruler               " Show the cursor position all the time
set showmode            " Show current mode
set number              " Show line numbers

" Always enable syntax & last search highlighting 
syntax enable
"set shiftwidth=2        " Number of spaces to use for each step of (auto)indentF
set wrap                " wrap long lines to windows width
set linebreak
set laststatus=2
set showcmd
set wildmenu

set incsearch           " shows the match while typing
set hlsearch            " highlight found searches
set background=dark
set modelines=0

"set ts=2
set sta
"set sts=2
set expandtab

" In text files, always limit the width of text to 78 characters
autocmd BufRead *.txt set tw=78

" When editing a file, always jump to the last cursor position
autocmd BufReadPost *
\ if line("'\"") > 0 && line ("'\"") <= line("$") |
\   exe "normal g'\"" |
\ endif

" Don't use Ex mode, use Q for formatting
map Q gq

if &term=="xterm"
     set t_RV=			" don't check terminal version
     set t_Co=8
     set t_Sb=^[4%dm
     set t_Sf=^[3%dm
endif

" some extra commands for HTML editing
nmap ,mh wbgueyei<<ESC>ea></<ESC>pa><ESC>bba
nmap ,h1 _i<h1><ESC>A</h1><ESC>
nmap ,h2 _i<h2><ESC>A</h2><ESC>
nmap ,h3 _i<h3><ESC>A</h3><ESC>
nmap ,h4 _i<h4><ESC>A</h4><ESC>
nmap ,h5 _i<h5><ESC>A</h5><ESC>
nmap ,h6 _i<h6><ESC>A</h6><ESC>
nmap ,hb wbi<b><ESC>ea</b><ESC>bb
nmap ,he wbi<em><ESC>ea</em><ESC>bb
nmap ,hi wbi<i><ESC>ea</i><ESC>bb
nmap ,hu wbi<u><ESC>ea</i><ESC>bb
nmap ,hs wbi<strong><ESC>ea</strong><ESC>bb
nmap ,ht wbi<tt><ESC>ea</tt><ESC>bb
nmap ,hx wbF<df>f<df>

" Enable this to automatically put extra space after ([ and before ])
" This comes from kde-devel-vim.vim plugin
let EnableSmartParens=1

nmap <C-N><C-N> :set invnumber <CR>
nmap <C-T> :Tlist <CR>

" Enables to move upward/downward at long lines
map <UP> gk
map <DOWN> gj
map k gk
map j gj

" Taglist defaults
let Tlist_Use_Right_Window=1
let Tlist_WinWidth=40
let Tlist_Exit_OnlyWindow=1
let Tlist_File_Fold_Auto_Close=1

" Enable filetype stuff
filetype plugin indent on

" Highlight 80. column
set colorcolumn=80

" Show TAB characters
set list!
set listchars=tab:>-

"source /etc/vim/kde-devel-vim.vim

" kde-devel-vim plugin adds some paths to search headers in. Some projects
" include paths relative to the src/ in the project top directory.
"set path+=src,
