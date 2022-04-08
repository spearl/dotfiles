let mapleader = "'"

syntax on " highlight syntax
filetype plugin indent on
"set number " show line numbers
set noswapfile " disable the swapfile
set hlsearch " highlight all results
set ignorecase " ignore case in search
set smartcase " case-sensitive if search contains an uppercase character
set incsearch " show search results as you type
set showcmd " show in progress commands

" Indent without hard tabs
set expandtab " expand tabs to spaces
set shiftwidth=2
set softtabstop=2

" reload vimrc
nmap <Leader>s :source ~/.vimrc<CR>

" remove arrow keys in all modes
nnoremap <Up> <nop>
vnoremap <Up> <nop>
inoremap <Up> <nop>
nnoremap <Down> <nop>
vnoremap <Down> <nop>
inoremap <Down> <nop>
nnoremap <Left> <nop>
vnoremap <Left> <nop>
inoremap <Left> <nop>
nnoremap <Right> <nop>
vnoremap <Right> <nop>
inoremap <Right> <nop>

" normal . in visual mode
vnoremap . :norm.<CR>

" maintain visual mode selection on indent
vnoremap > >gv
vnoremap < <gv

" option-j/k to move lines up and down
nnoremap ∆ :m .+1<CR>==
nnoremap ˚ :m .-2<CR>==
inoremap ∆ <Esc>:m .+1<CR>==gi
inoremap ˚ <Esc>:m .-2<CR>==gi
vnoremap ∆ :m '>+1<CR>gv=gv
vnoremap ˚ :m '<-2<CR>gv=gv

" insert mode emacs keybindings
inoremap <C-e> <Esc>A
inoremap <C-a> <Esc>I

" insert mode line cursor, else block cursor
" let &t_SI = "\<Esc>]50;CursorShape=1\x7"
" let &t_SR = "\<Esc>]50;CursorShape=2\x7"
" let &t_EI = "\<Esc>]50;CursorShape=0\x7"
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" html
"autocmd BufRead,BufNewFile *.htm,*.html,*.css setlocal tabstop=2 shiftwidth=2 softtabstop=2
"

" set colorscheme
colorscheme nord
