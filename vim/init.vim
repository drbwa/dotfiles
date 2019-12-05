" colorscheme molokai
" maximum ling length; longer lines will be wrapped onto a new line i.e. a hard
" wrap as opposed to a soft one this displays long lines well in any editor.
" :set textwidth=80
set textwidth=0
set wrapmargin=0
" display colored bar in column
set colorcolumn=80
let g:NERDTreeWinSize=40
" autoindent with two spaces, always expand tab
autocmd FileType ruby,eruby,yaml,javascript set ai sw=2 sts=2 et
let g:indent_guides_enable_on_vim_startup = 0
" disable spell checking
set nospell
" Enable spell checking when opening .tex files
"autocmd!
"au BufNewFile,BufRead *.tex setlocal spell spelllang=en_us

" bind CTRL+e to toggle NerdTree
:nnoremap <C-n> :NERDTreeToggle<CR>

map <leader>r :NERDTreeFind<cr>

" enable line numbering
set number

" increase history from default 20
set history=1000

filetype plugin indent on   " Automatically detect file types.
syntax on                   " Syntax highlighting
set mouse=a                 " Automatically enable mouse usage
set mousehide               " Hide the mouse cursor while typing
scriptencoding utf-8
set cursorline                  " Highlight current line

set showmatch                   " Show matching brackets/parenthesis
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
set winminheight=0              " Windows can be 0 line high
set ignorecase                  " Case insensitive search
set smartcase                   " Case sensitive when uc present
set wildmenu                    " Show list instead of just completing
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor

set autoindent                  " Indent at the same level of the previous line
set shiftwidth=4                " Use indents of 4 spaces
set expandtab                   " Tabs are spaces, not tabs
set tabstop=4                   " An indentation every four columns
set softtabstop=4               " Let backspace delete indent

call plug#begin('~/.local/share/nvim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'altercation/vim-colors-solarized'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'shougo/neocomplete.vim'
Plug 'fatih/vim-go'
Plug 'pangloss/vim-javascript'
Plug 'plasticboy/vim-markdown'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-markdown'
Plug 'elzr/vim-json'
Plug 'othree/html5.vim'
Plug 'klen/python-mode'
Plug 'tomasr/molokai'
Plug 'udalov/kotlin-vim'
call plug#end()
