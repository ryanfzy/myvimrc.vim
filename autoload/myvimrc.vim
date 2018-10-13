" author: ryan feng

" check if it is already loaded
if exists("g:loaded_myvimrc")
    finish
endif
let g:loaded_myvimrc = 1

" save current vim settings
let s:save_cpo = &cpo
" reset vim settings
set cpo&vim

" restore vim settings
function! s:Restore_cpo()
    let &cpo = s:save_cpo
    unlet s:save_cpo
endfunction

function myvimrc#Run()
    set nocompatible

    let mapleader=";"

    " this will cause cursor moving right a position delay
    "nmap lb 0
    "nmap le $
    nmap <leader>w :w<cr>
    nmap <leader>q :q<cr>
    nmap <leader>WQ :wa<cr>:q<cr>
    nmap <leader>Q :qa!<cr>
    nnoremap <leader>lw <c-w>l
    nnoremap <leader>hw <c-w>h
    nnoremap <leader>kw <c-w>k
    nnoremap <leader>jw <c-w>j

    set incsearch
    set ignorecase
    set wildmenu

    set fileencoding=utf8
    set encoding=utf8

    set laststatus=2
    "set ruler
    "set cursorline
    "set cursorcolumn
    set number
    set hlsearch

    filetype indent on
    set expandtab
    set tabstop=4
    set softtabstop=4

    set backspace=indent,eol,start
    set nobackup
    set history=50
    set showcmd
    set cindent
    set smartcase
    set hid
    set shiftwidth=4
    set showmatch

    set nowrap
    syn on
    set confirm
endfunction

call s:Restore_cpo()
