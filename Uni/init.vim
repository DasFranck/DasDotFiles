" Vim-Plug Init ---------------------------------------------------------------
set nocompatible
filetype off


" Vim-Plug --------------------------------------------------------------------
call plug#begin('~/.conf')

" Bar/Graphic
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" C
Plug 'c.vim'

" C++
Plug 'octol/vim-cpp-enhanced-highlight'

" Completion
" Plug 'Shougo/deoplete.nvim'

" Git
Plug 'tpope/vim-fugitive'

" Git Diff vim
Plug 'airblade/vim-gitgutter'

" GPG
Plug 'jamessan/vim-gnupg'

" Ipython
" Plug 'bfredl/nvim-ipy'

" Man
Plug 'vim-utils/vim-man'

" MarkDown
"Plug 'euclio/vim-markdown-composer'

" NerdTree (Explorer File)
Plug 'scrooloose/nerdtree'

" R
Plug 'Vim-R-plugin'

" Syntax Check
Plug 'scrooloose/syntastic'

" LLDB Debuger (C/C++)
Plug 'critiqjo/lldb.nvim'

" NetRW
Plug 'netrw.vim'

" Usless Endline Whitespaces Colored
Plug 'ntpeters/vim-better-whitespace'

" WebDevIcons
Plug 'ryanoasis/vim-webdevicons'

call plug#end()
filetype plugin indent on


" Config ----------------------------------------------------------------------
set wildmenu
set encoding=utf8
syntax on
set ruler
colorscheme jellybeans

" My Indentation
set autoindent
set expandtab
set softtabstop=2
set tabstop=8
set rnu
set laststatus=2
set shiftwidth=2

" 80 Red Line
set t_Co=256
hi ColorColumn ctermbg=52
set colorcolumn=80

" Show Tab
set list
hi SpecialKey ctermbg=black ctermfg=160
set listchars=tab:>_


" Plugin Config ---------------------------------------------------------------

" Airline
let g:Powerline_symbols="fancy"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 0
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9

" Deoplete
let g:deoplete#enable_at_startup = 1

" Epitech.vim
let g:epitech_header = 1

" Config MapLeader
" let mapleader=','

" C.vim
let  g:C_UseTool_cmake   = 'yes'
let  g:C_UseTool_doxygen = 'yes'

" NerdTree
map <F11> :NERDTreeToggle<CR>


" Alias -----------------------------------------------------------------------
cnoreabbrev sh term
