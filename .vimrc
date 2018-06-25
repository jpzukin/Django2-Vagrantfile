set encoding=utf-8
scriptencoding utf-8

call plug#begin()
Plug 'junegunn/seoul256.vim'          "colorscheme <seoul256>
Plug 'vim-airline/vim-airline'        "status-line
Plug 'vim-airline/vim-airline-themes' "status-line themes
Plug 'scrooloose/nerdtree'            "file explorer
Plug 'tpope/vim-fugitive'             "show git branch
call plug#end()

let g:seoul256_background = 233
colorscheme seoul256

nmap <silent><c-e> :NERDTreeToggle<cr>
nmap <cr> :nohlsearch<cr>
nmap <silent><c-l> :bNext<cr>
let mapleader="\<space>"

set number nowrap
set nofixendofline
set autowriteall
set incsearch hlsearch ignorecase smartcase
set whichwrap=b,s,h,l,<,>,[,]
set backspace=indent,eol,start
set smartindent autoindent expandtab

au vimenter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
au bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

augroup setting_by_filetype 
    au!
    au FileType *       setl sts=4 ts=4 shiftwidth=4 expandtab
    au FileType html    setl sts=2 ts=2 shiftwidth=2 expandtab autoindent
    au FileType css     setl sts=2 ts=2 shiftwidth=2 expandtab autoindent
    au FileType arduino setl sts=2 ts=2 shiftwidth=2 expandtab autoindent
    au FileType cpp     setl sts=2 ts=2 shiftwidth=2 expandtab autoindent
    au FileType python  setl sts=4 ts=4 shiftwidth=4 expandtab autoindent
augroup end

augroup vimrcEx
    au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif
augroup end

function Exec()
    if &ft == "python"
        exec ":!python3 %"
    else
        exec ":!" . &ft . " %"
    endif
endfunction
nmap <leader><leader> :call Exec()<cr>

