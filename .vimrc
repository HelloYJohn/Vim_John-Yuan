"============== bool set begin =======================
set tabstop=4
set shiftwidth=4
set nu
syntax on
set hlsearch
set encoding=utf-8
set showmatch
set expandtab
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ %{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\"}\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%m/%d/%Y\ -\ %H:%M\")}
set laststatus=2
"============== bool set begin =======================


"============== autocmd begin ========================
au BufNewFile *.py exec ':call SetPythonHeader()'
"============== autocmd begin ========================


"============== inormap begin ========================
inoremap jk <esc>
vnoremap jk <esc>
nnoremap jk <esc>

inoremap <C-Y> viw
vnoremap <C-Y> iw
noremap <C-Y> viw

inoremap <C-H>  <esc>:set hlsearch<cr>
vnoremap <C-H> <esc>:set hlsearch<cr>
nnoremap <C-H> :set hlsearch<cr>
inoremap <F3> <esc>:set nohlsearch<cr>
vnoremap <F3> <esc>:set nohlsearch<cr>
nnoremap <F3> :set nohlsearch<cr>

inoremap <F2> :source ~/.vimrc<cr>
vnoremap <F2> :source ~/.vimrc<cr>
nnoremap <F2> :source ~/.vimrc<cr>

inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i
"============== inormap end ==========================


"============== function begin =======================
function SetPythonHeader()
    call setline(1, "#!/usr/bin/python")
    call append(1, "")
    exec ":$" 
endfunc

au BufNewFile *.sh exec ':call SetShellHeader()'
function SetShellHeader()
    call setline(1, "#!/bin/bash")
    call append(1, "")
    exec ":$" 
endfunc
"============== function end  ========================


"============== function dirscription begin ==========
"=== diffsplit ===
"   ]c [c jump previous or next
"============== function dirscription begin ==========
