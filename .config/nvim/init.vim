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

" Git
Plug 'tpope/vim-fugitive'

" GPG
Plug 'jamessan/vim-gnupg'

" Gundo (Graph Undo) with neovim support
Plug 'simnalamburt/mundo.vim'

" Indent
Plug 'nathanaelkane/vim-indent-guides'

" Man
Plug 'vim-utils/vim-man'

" Markdown
" Plug 'euclio/vim-markdown-composer', { 'do': function('VMC_BuildComposer') }

" NerdCommenter
Plug 'scrooloose/nerdcommenter'

" NerdTree (Explorer File)
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Rainbow Parentheses
Plug 'kien/rainbow_parentheses.vim'

" Usless Endline Whitespaces Colored
Plug 'ntpeters/vim-better-whitespace'

" WebDevIcons
Plug 'ryanoasis/vim-webdevicons'

" File highlights
Plug 'smancill/conky-syntax.vim'

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
set relativenumber                                        " Relative line number

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
let g:mapleader=','

" Show Tab
set list
highlight SpecialKey ctermbg=black ctermfg=160
set listchars=tab:>_


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  Plugin Config                                                               "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Airline
let g:Powerline_symbols='fancy'
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

" Indent guides
let g:indent_guides_start_level = 2

" Mundo
map <F5> :MundoToggle<CR>
"" Persistent undo history
set undofile
set undodir=~/.config/nvim/undo

" NerdTree
map <F11> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"  The DONT-FORGET things notepad.                                             "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Mundo (Gundo)
" <F5> to toggle

"" Neomake
" :lopen to open the error windows
" :lclose to close it
" :ll to jump to the first error
" :ll # to jump to the error #

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
" How to use this init.vim
"" curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"" pacman -S flake8
"" pip2 install neovim jedi
"" pip3 install neovim jedi

" No colors
"" Set TERM to xterm-256color in your terminal emulator
