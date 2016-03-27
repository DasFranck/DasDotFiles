" Vim-Plug Init ---------------------------------------------------------------
filetype off


" Vim-Plug --------------------------------------------------------------------
call plug#begin('~/.nvim_plugs')

" Jellybeans theme
Plug 'nanotech/jellybeans.vim'

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

" Gundo (Graph Undo) with neovim support
Plug 'simnalamburt/mundo.vim'

" Indent
Plug 'nathanaelkane/vim-indent-guides'

" Man
Plug 'vim-utils/vim-man'

" Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

" NerdCommenter
Plug 'scrooloose/nerdcommenter'

" NerdTree (Explorer File)
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Polyglot (Lang package collection°
Plug 'sheerun/vim-polyglot'

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
set background=dark
colorscheme jellybeans

" My Indentation
set autoindent
set expandtab
set softtabstop=2
set tabstop=8
set rnu
set laststatus=2
set shiftwidth=2

" Config MapLeader
let mapleader=','

" 80 Red Line for C-Files
au Filetype C hi ColorColumn ctermbg=52
au Filetype C set colorcolumn=80

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

" C.vim
let  g:C_UseTool_cmake   = 'yes'
let  g:C_UseTool_doxygen = 'yes'

" Deoplete
let g:deoplete#enable_at_startup = 1

" Epitech.vim
let g:epitech_header = 1

" Mundo
map <F5> :MundoToggle<CR>
""Persitent undo history
set undofile
set undodir=~/.config/nvim/undo

" Syntastic
let g:syntastic_cpp_compiler_options='-std=c++11'

" NerdTree
map <F11> :NERDTreeToggle<CR>


" Alias -----------------------------------------------------------------------
cnoreabbrev sh term


""" The DONT-FORGET things.
"" Multiple cursors
" <C-n>
"" Mundo (Gundo)
" <F5> to toggle
"
"" NerdCommenter
" \cc to comment
" \cu to uncomment
"
"" NerdTree
" <F11> to toggle
"
"" Vim-indent-guides
" <Leader>ig to toggle it
