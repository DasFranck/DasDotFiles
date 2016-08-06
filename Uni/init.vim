"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Plugins and Vim-Plug                                                       "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.nvim_plugs')

" Jellybeans theme
Plug 'nanotech/jellybeans.vim'

" Alignement plugin
Plug 'junegunn/vim-easy-align'

" Bar/Graphic
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" C
Plug 'c.vim'

" C++
Plug 'octol/vim-cpp-enhanced-highlight'

" Auto-Completion
Plug 'Shougo/deoplete.nvim'
" Plug 'zchee/deoplete-clang'     " Looks broken
Plug 'zchee/deoplete-jedi'

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

" Polyglot (Lang package collection)
Plug 'sheerun/vim-polyglot'

" Syntax Check
" Plug 'scrooloose/syntastic'
Plug 'neomake/neomake'

" Usless Endline Whitespaces Colored
Plug 'ntpeters/vim-better-whitespace'

" WebDevIcons
Plug 'ryanoasis/vim-webdevicons'

" LLDB Debuger (C/C++)
" Plug 'critiqjo/lldb.nvim'

" NetRW
" Plug 'netrw.vim'

call plug#end()
filetype plugin indent on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Config                                                                      "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set wildmenu
set encoding=utf8
set background=dark
colorscheme jellybeans

" My dear ruler
set ruler
set rnu                                                   " Relative line number

" Backspace is a backspace
set backspace=indent,eol,start

" My Indentation
set autoindent
set expandtab
set softtabstop=2
set tabstop=8
set laststatus=2
set shiftwidth=2

" Search config
set hlsearch                                              " Highlight search result
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
set incsearch                                             " Incremental search

" Config MapLeader
let mapleader=','

" 80 Red Line for C-Files
autocmd Filetype C highlight ColorColumn ctermbg=52
autocmd Filetype C set colorcolumn=80

" Show Tab
set list
highlight SpecialKey ctermbg=black ctermfg=160
set listchars=tab:>_


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Plugin Config                                                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

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
" let g:deoplete#enable_at_startup = 1

" Epitech.vim
let g:epitech_header = 1

" Indent guides
let g:indent_guides_start_level = 2

" Mundo
map <F5> :MundoToggle<CR>
"" Persistent undo history
set undofile
set undodir=~/.config/nvim/undo

" Neomake
autocmd! BufWritePost * Neomake
let g:neomake_verbose = 0                                 " Stop telling me you've done
let g:neomake_cpp_clang_maker = {
    \ 'args': ['-std=c++11']
    \ }
let g:neomake_python_flake8_maker = {
    \ 'args': ['--ignore=E501,E402']
    \ }
let g:neomake_cpp_enabled_makers = ['clang']
let g:neomake_python_enabled_makers = ['flake8']
let g:neomake_open_list = 2
let g:neomake_list_height = 2
"" Neomake 'skin'
highlight NeomakeWarningMsg ctermfg=237 ctermbg=227
highlight NeomakeErrorMsg ctermfg=237 ctermbg=197
let g:neomake_warning_sign={'text': '⚠', 'texthl': 'NeomakeWarningMsg'}
let g:neomake_error_sign={'text': '✖', 'texthl': 'NeomakeErrorMsg'}

" NerdTree
map <F11> :NERDTreeToggle<CR>

" Use deoplete.
let g:deoplete#enable_at_startup = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  The DONT-FORGET things notepad.                                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Multiple cursors
" <C-n>

"" Mundo (Gundo)
" <F5> to toggle

"" NerdCommenter
" <Leader>cc to comment
" <Leader>cn to comment with nesting forced
" <Leader>cu to uncomment

"" NerdTree
" <F11> to toggle

"" Vim-indent-guides
" <Leader>ig to toggle it
"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Some troubleshooting                                                       "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" No colors
"" Set TERM to xterm-256color in your terminal emulator

" Mundo requires vim to be compiled with python 2.4+
"" pip2 install neovim
"" pip3 install neovim
