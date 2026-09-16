set tabstop=5
set expandtab
set softtabstop=4
set shiftwidth=4
set numberwidth=5

set statusline="%t"
set belloff=all

set background=dark
set noerrorbells

" Clipboard
set clipboard+=unnamedplus

" Line numbers
set number
set relativenumber

" Search
set hlsearch
set incsearch

" Visual block move mappings
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Split windows
set splitright
set splitbelow

" Cursor line
set nocul
set cursorlineopt=number
" hi CursorLineNr ctermfg=red guifg=#ffdd33

" Cursor appearance
set guicursor=n-v-c-sm:block,i:ver25,ve:ver35,o:hor50,r-cr:hor20,ci:ver25


" Misc
set scrolloff=8
set noswapfile
set termguicolors
" set colorcolumn=80

" Netrw
let g:netrw_browse_split = 0
let g:netrw_banner = 0
let g:netrw_winsize = 25
let g:mapleader = " "


" Status bar
set showtabline=0
" set laststatus=0

syntax on

" here are some comments using vimscript

" minor visual changes to panes
" set fillchars=vert:\ ,horiz:\ ,horizup:\ ,horizdown:\ ,vertleft:\ ,vertright:\ ,verthoriz:\ 

" Renders spaces as "·"
set nolist
set listchars+=space:·

nohlsearch
set noshowmatch
set matchpairs=""

noremap <leader>ef :Ex<CR>
noremap <leader>sf :FZF<CR>
noremap <leader>wv :vsplit<CR>
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

call plug#begin()

" List your plugins here
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'junegunn/fzf'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'

call plug#end()

let g:gruvbox_termcolors = 16
" colorscheme gruvbox
