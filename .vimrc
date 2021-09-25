syntax enable              " Enable syntax highlighting.
filetype plugin indent on  " Enable file type based indentation.
set autoindent             " Respect indentation when starting a new line.
set expandtab              " Expand tabs to spaces.
set tabstop=4              " Number of spaces tab is counted for.
set shiftwidth=4           " Number of spaces to use for autoindent.
" set softtabstop=4
set backspace=2            " Fix backspace behavior on most terminals.
set number
colorscheme default        " Change a colorscheme.
" set foldmethod=indent
set wildmenu

set path+=*
set hlsearch "Highlights search terms"
set incsearch "Highlights search terms as you type them"
set showmatch "Highlights matching parentheses"
set ignorecase "Ignores case when searching"
set smartcase "Unless you put some caps in your search term"

set laststatus=2
set ruler
set scrolloff=5

" Manage plugins with vim-plug.
call plug#begin()
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
call plug#end()
