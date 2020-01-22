set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'wincent/command-t'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/syntastic'
Plugin 'airblade/vim-gitgutter'
Plugin 'leafgarland/typescript-vim'

call vundle#end()
filetype plugin indent on

set backspace=indent,eol,start
set wildignore=*.swp,*.bak,*.pyc,*.class,node_modules

syntax on
set background=dark
colorscheme gruvbox

set autoread
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set relativenumber
set autoindent

set hlsearch
set showmatch
set hidden
set history=500

hi vertsplit ctermfg=238 ctermbg=235
hi LineNr ctermfg=237
hi StatusLine ctermfg=235 ctermbg=245
hi StatusLineNC ctermfg=235 ctermbg=237
hi Search ctermbg=58 ctermfg=15
hi Default ctermfg=1
hi clear SignColumn
hi SignColumn ctermbg=235
hi GitGutterAdd ctermbg=235 ctermfg=245
hi GitGutterChange ctermbg=235 ctermfg=245
hi GitGutterDelete ctermbg=235 ctermfg=245
hi GitGutterChangeDelete ctermbg=235 ctermfg=245
hi EndOfBuffer ctermfg=237 ctermbg=235

set statusline=%=%P\ %f\ %m
set fillchars=vert:\ ,stl:\ ,stlnc:\
set laststatus=2
set noshowmode

set termguicolors

map <leader>s :source ~/.vimrc<CR>
inoremap kj <esc>
inoremap jk <esc>

