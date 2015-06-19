set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
 
" Switch between header and source files using :A
Bundle "git://github.com/vim-scripts/a.vim.git"
" NERDTree filebrowser
Bundle "git://github.com/scrooloose/nerdtree.git"
" Go extension
Plugin 'fatih/vim-go'
" Commenting
Bundle 'scrooloose/nerdcommenter'
" Tagbar
Bundle 'majutsushi/tagbar'
" Nice statusbar
Bundle 'bling/vim-airline'
" Distraction-free mode
Plugin 'junegunn/goyo.vim'
" C++ Google format
Plugin 'rhysd/vim-clang-format'
Plugin 'kien/ctrlp.vim'
" Git integration
Plugin 'tpope/vim-fugitive'
" Wrap
Plugin 'tpope/vim-surround'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

highlight cppSTLnamespace ctermbg=Grey 
highlight cppSTLtype ctermbg=Gray  

syntax enable

set guifont=Monaco:h11
colorscheme solarized
set background=dark

set title
set showcmd

set guioptions-=r 

set textwidth=80
set cursorline

set expandtab
set tabstop=4
set shiftwidth=4

set incsearch
set ignorecase

set history=700
set autoread
set number

set laststatus=2
set wildmenu

let mapleader = ","
let g:mapleader = ","

" Remap VIM 0 to first non-blank character
map 0 ^
cnoreabbrev W w

nmap <leader>s :TagbarToggle<cr>
nmap <leader>b :NERDTreeToggle<CR>
nmap <leader>f :Goyo<CR>
map <C-K> :pyf <path-to-this-file>/clang-format.py<cr>
" turn off search highlight
map <space> /
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove<cr>
map <leader>t<leader> :tabnext<cr>

" move vertically by visual line
nnoremap j gj
nnoremap k gk

map <leader>d 40j
" window navigation
map <leader>j  <C-W>j
map <leader>k <C-W>k
map <leader>h <C-W>h
map <leader>l <C-W>l

map <leader>p :CtrlP<cr>

set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.o

let g:lasttab = 1
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1

let g:solarized_termcolors=256
let g:NERDTreeWinSize=35
let g:goyo_margin_top=2
let g:goyo_margin_bottom=2

let g:clang_format#command="/usr/local/Cellar/clang-format/2015-01-13/bin/clang-format"
let g:clang_format#code_style="google"
let g:clang_format#auto_format=1
let NERDTreeIgnore = ['\.pyc$', '\.o$']
let g:tagbar_indent = 1
let g:tagbar_show_visibility = 0
