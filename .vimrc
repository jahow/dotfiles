" Globals -----------------------------------------------------------------{{{
set nocompatible
set modelines=0
set mouse=a
set ttyfast
set wildmode=list:longest,full
set wildignore+=*.o,*.obj,.git,.svn,*.pyc
set wildignore+=*/.git/*,*/.svn/*
set hidden
set switchbuf=usetab,newtab
" }}}

runtime bundle/matchit/plugin/matchit.vim

" Tab/spaces --------------------------------------------------------------{{{
set shiftwidth=4
set tabstop=4
set softtabstop=4
set expandtab
" }}}

" Backups -----------------------------------------------------------------{{{
if v:version < 703
    let g:gundo_disable = 1
endif
set undolevels=500
" }}}

" User Interface ----------------------------------------------------------{{{
set guioptions-=T
set guioptions-=r
syntax on
set bg=light
set number
set relativenumber
set cc=80
set list
set shortmess+=r
set t_Co=256

" Leader {{{
let mapleader=','
" }}}

" Search {{{
set hlsearch
set nowrap
set ignorecase
set gdefault
nnoremap n nzz
nnoremap N Nzz
" }}}

" Text {{{
set formatoptions-=t
set textwidth=79
" }}}

" Fn keys mapping {{{
" Get out of <esc>
inoremap gq <esc>
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O><F2>
set pastetoggle=<F2>
nnoremap <F3> :GundoToggle<CR>
nnoremap <F4> :set norelativenumber<CR>:set nonumber<CR>
nnoremap <F5> :set relativenumber<CR>:set number<CR>
" }}}

" C-d to delete word after cursor in insert mode
imap <C-d> <C-[>diwi

