syntax enable              " Enable syntax highlighting.
filetype plugin indent on  " Enable file type based indentation.
set autoindent             " Respect indentation when starting a new line.
set expandtab              " Expand tabs to spaces.
set tabstop=2              " Number of spaces tab is counted for.
set shiftwidth=2           " Number of spaces to use for autoindent.
set backspace=2            " Fix backspace behavior on most terminals.
set number
colorscheme default        " Change a colorscheme.
" set foldmethod=indent
" set wildmenu

set hlsearch "Highlights search terms"
set incsearch "Highlights search terms as you type them"
set showmatch "Highlights matching parentheses"
set ignorecase "Ignores case when searching"
set smartcase "Unless you put some caps in your search term"

set laststatus=2
set ruler

" Manage plugins with vim-plug.
call plug#begin()
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
call plug#end()
