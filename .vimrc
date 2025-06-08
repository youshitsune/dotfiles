syntax on

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set number relativenumber
set undofile
set ignorecase
set smartcase
set incsearch
set nocompatible
set nomodeline
set autochdir
set laststatus=2
set encoding=utf-8
set omnifunc=syntaxcomplete
set ut=1000
set completeopt-=preview
scriptencoding utf-8
filetype plugin on

let mapleader = ' '
let g:vimwiki_list = [{'path': '~/Documents/Notes', 'syntax': 'markdown', 'ext': '.md'}]

autocmd BufRead diary.md :VimwikiDiaryGenerateLinks


call plug#begin('~/.vim/plugged')
    Plug 'ap/vim-css-color'
    Plug 'mcchrish/nnn.vim'
    Plug 'junegunn/goyo.vim'
    Plug 'vimwiki/vimwiki'
    Plug 'https://git.sr.ht/~torresjrjr/gemini.vim/'
    Plug 'sudar/vim-arduino-syntax'
    Plug 'vim-autoformat/vim-autoformat'
    Plug 'bellinitte/uxntal.vim'
    Plug 'leafOfTree/vim-svelte-plugin'
    Plug 'fatih/vim-go'
    Plug 'ycm-core/YouCompleteMe'
    Plug 'SirVer/ultisnips'
call plug#end()

colorscheme industry

nnoremap <leader>g :Goyo<CR>
nnoremap <leader>n :NnnPicker<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

