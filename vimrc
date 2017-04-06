" Vim Plug ------------------------------- {{{
call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'embear/vim-localvimrc'
call plug#end()
" }}}

" Vimscript file setttings --------------- {{{
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END
" }}}

" GUI settings --------------------------- {{{
if has('gui_running')
    autocmd GUIEnter * simalt ~x
    set guifont=Consolas:h11:cANSI:qDRAFT
    set guioptions-=m
    set guioptions-=T
    set guioptions-=L
    set guioptions-=r
    set guioptions-=b
endif
" }}}

" Common settings ----------------------- {{{
colorscheme desert
syntax on
filetype plugin indent on

set nocompatible

set scrolloff=5
set scrolljump=5
set sidescroll=3
set sidescrolloff=3
set nowrap
set ruler
set rulerformat=%35(%=%r%Y\|%{&ff}\|%{strlen(&fenc)?&fenc:'none'}\ %m\ %l/%L%)
set whichwrap=b,s,<,>,[,]

set splitright splitbelow
set backspace=indent,eol,start
set smarttab expandtab
set autoindent smartindent
set tabstop=4 softtabstop=4 shiftwidth=4
set ignorecase smartcase incsearch hlsearch

set nobackup noswapfile
set history=200
set autoread

set numberwidth=4
set number
set showcmd
set shiftround
set clipboard=unnamed
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" }}}

" Key map settings ---------------------- {{{
let mapleader=" "
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
inoremap jk <esc>
inoremap <esc> <nop>

inoremap <c-h> <left>
inoremap <c-j> <down>
inoremap <c-k> <up>
inoremap <c-l> <right>

nnoremap <c-h> <c-w>h
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-l> <c-l>l

nnoremap <leader>f <c-f>
nnoremap <leader>b <c-b>
nnoremap <leader>d <c-d>
nnoremap <leader>u <c-u>

nnoremap H ^
nnoremap L $
nnoremap U <c-r>
nnoremap Y y$

nnoremap <silent> n nzz
nnoremap <silent> N Nzz
nnoremap <silent> * *zz
nnoremap <silent> # #zz

nnoremap <a-down> :bn!<cr>
nnoremap <a-up> :bp!<cr>
inoremap <a-down> <esc>:bn!<cr>
inoremap <a-up> <esc>:bp!<cr>
inoremap <c-bs> <c-w>

vnoremap < <gv
vnoremap > >gv
" }}}

" CtrlP settings ------------------------ {{{
let g:ctrlp_by_filename=1
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_root_markers = ['.config']
" }}}

" Localvimrc setttings -------------------{{{
let g:localvimrc_sourced_once=1
let g:localvimrc_sourced_once_for_file=1
let g:localvimrc_name=".config/vimrc"
" }}}

