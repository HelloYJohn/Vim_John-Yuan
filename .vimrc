"============== bool set begin =======================
set tabstop=4
set shiftwidth=4
set nu
syntax on
set hlsearch
set encoding=utf-8
set showmatch
set expandtab
set autoindent
" set status
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ %{\"[\".(&fenc==\"\"?&enc:&fenc).((exists(\"+bomb\")\ &&\ &bomb)?\",B\":\"\").\"]\"}\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ %{strftime(\"%m/%d/%Y\ -\ %H:%M\")}
set laststatus=2
"
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

inoremap <F4>   <esc>:set hlsearch<cr>
vnoremap <F4> <esc>:set hlsearch<cr>
nnoremap <F4> :set hlsearch<cr>
inoremap <F3> <esc>:set nohlsearch<cr>
vnoremap <F3> <esc>:set nohlsearch<cr>
nnoremap <F3> :set nohlsearch<cr>

inoremap <F2> :source ~/.vimrc<cr>
vnoremap <F2> :source ~/.vimrc<cr>
nnoremap <F2> :source ~/.vimrc<cr>

nnoremap <C-/>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-/>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-/>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-/>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-/>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-/>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nnoremap <C-/>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nnoremap <C-/>d :cs find d <C-R>=expand("<cword>")<CR><CR>

nnoremap <F12> :TlistToggle

"inoremap ( ()<Esc>i
"inoremap [ []<Esc>i
"inoremap { {}<Esc>i
"inoremap ' ''<Esc>i
"inoremap " ""<Esc>i
"============== inormap end ==========================


"============== function begin =======================
function SetPythonHeader()
call setline(1, "#!/usr/bin/python")
call append(1, "")
exec ":$" 
endfunc

function SetCPPHeader()
call setline(1, "#include <iostream>")
call setline(2, "using namespace std;")
call setline(3, "")
call setline(4, "int main() {")
call setline(5, "     ")
call setline(6, "    return 0;")
call setline(7, "}")
let pos=[0, 5, 5, 0]
call setpos(".", pos)
"exec ":$"
endfunc
au BufNewFile *.cpp exec ':call SetCPPHeader()'

function SetShellHeader()
call setline(1, "#!/bin/bash")
call append(1, "")
exec ":$" 
endfunc
au BufNewFile *.sh exec ':call SetShellHeader()'
"============== function end  ========================
"============== auto command begin====================
au FileType * setlocal formatoptions-=cro
"============== auto command end =====================

"============== function dirscription begin ==========
"=== diffsplit ===
"   ]c [c jump previous or next
"============== function dirscription begin ==========


"============== macro begin ==========
let @a = ":e<CR>G?============================Before constant optimize begin<CR>"
"============== macro end ============

"============== tabnew dirscription begin ==========
" tabnew 打开一个新的tab
" tabc 关闭一个新的tab
" tabo 关闭其他的tab
" tabn 下一个tab
" tabp 上一个tab
"============== tabnew dirscription begin ==========
