set nocp " 'compatible' is not set
filetype plugin on " plugins are enabled
filetype plugin indent on  " Enable file type based indentation.
set autoindent             " Respect indentation when starting a new line.
set expandtab              " Expand tabs to spaces.
set tabstop=2              " Number of spaces tab is counted for.
set shiftwidth=2           " Number of spaces to use for autoindent.
set softtabstop=2
set backspace=2            " Fix backspace behavior on most terminals.
set number

" set wildmenu
" set paste

set path+=*
set hlsearch "Highlights search terms"
set incsearch "Highlights search terms as you type them"
set showmatch "Highlights matching parentheses"
set ignorecase
set smartcase "Unless you put some caps in your search term"

set laststatus=2
set ruler
set scrolloff=5

set autoread

set hidden

" Manage plugins with vim-plug.
call plug#begin()
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
" Plug 'mileszs/ack.vim'
" Plug 'leafgarland/typescript-vim'
" Plug 'tpope/vim-vinegar'
" Plug 'voldikss/vim-floaterm'
call plug#end()

" netrw
let g:netrw_preview = 1                                 

" Learning VimScript the Hard Way
" echo 'hello, world'
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" autocmd BufWrite * :echom "Writing a buffer!"

nnoremap <leader>ff :set foldmethod=indent<cr>

nnoremap ] :bnext<cr>
nnoremap [ :bprev<cr>

nnoremap <leader>p :FZF<cr>

nnoremap <leader>cv :colorscheme morning<cr>

" golang
autocmd BufRead,BufNewFile *.go set shiftwidth=8 
autocmd BufRead,BufNewFile *.go set tabstop=8
autocmd BufRead,BufNewFile *.go set expandtab!

