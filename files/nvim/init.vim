" line numbers
set number
set relativenumber

"clipboard
set clipboard+=unnamedplus
set clipboard+=unnamed
set go+=a
set paste

"tab and indent
set autoindent

set tabstop=2
set shiftwidth=2
set smarttab
set softtabstop=2
set mouse=a

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'cloudhead/neovim-fuzzy'

call plug#end()

"Key Bindings

nnoremap <C-p> :FuzzyOpen<CR>



