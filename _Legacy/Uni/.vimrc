filetype off

set wildmenu
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

set encoding=utf8
syntax on
set ruler
colorscheme jellybeans

set expandtab
set tabstop=4
set rnu

" Config MapLeader
let mapleader=','
nmap <leader>a :Gwrite<CR>
nmap <leader>c :Gcommit<CR>

" Airline
let g:Powerline_symbols="fancy"
let g:airline_powerline_fonts = 1
set laststatus=2
set shiftwidth=4

Plugin 'gmarik/vundle'

" Syntax Check
Bundle 'scrooloose/syntastic'

" Git
Bundle 'tpope/vim-fugitive'

" NerdTree (Explorer File)
Bundle 'wycats/nerdtree'

" Bar/Graphic
Bundle 'bling/vim-airline'

"Modif vim 
Bundle 'airblade/vim-gitgutter'

filetype plugin indent on

" Config MapLeader
let mapleader=','
nmap <leader>a :Gwrite<CR>
nmap <leader>c :Gcommit<CR>

" Airline
let g:Powerline_symbols="fancy"
let g:airline_powerline_fonts = 1
set laststatus=2

set t_Co=256

"set colorcolumn=80
