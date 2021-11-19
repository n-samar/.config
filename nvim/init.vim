set nocompatible              
filetype plugin indent on     " required

" remap : to ; and vis versa
nnoremap : ;
nnoremap ; :

" turn hybrid line numbers on
:set number relativenumber
:set nu rnu

" ignore case
:set smartcase
:set infercase " used so ignorecase interacts well with autocompletion

" tabs are spaces
:set expandtab

" remap buffer navigation
noremap <C-h> <C-w>h
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l

" disable arrow keys
noremap  <Up> ""
noremap! <Up> <Esc>
noremap  <Down> ""
noremap! <Down> <Esc>
noremap  <Left> ""
noremap! <Left> <Esc>
noremap  <Right> ""
noremap! <Right> <Esc>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'mtikekar/vim-bsv'
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'   " status bar
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim' " Fuzzy search, file opening
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'preservim/nerdtree' " File search
Plugin 'junegunn/fzf'       " Fuzzy finder
Plugin 'junegunn/fzf.vim'
Plugin 'voldikss/vim-floaterm' " Vim floating terminal
Plugin 'VimCompletesMe'  " vim autocomplete
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-surround'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on

" Enable matchit plugin
runtime macros/matchit.vim

syntax on
set colorcolumn=80

" Enable mouse in all modes
set mouse=a

" allows <Esc> to transition terminal->normal mode
tnoremap <Esc> <C-\><C-n>

set background=dark
colorscheme PaperColor

let NERDSpaceDelims=1

set tabstop=4
set shiftwidth=4
set encoding=utf-8
set autoindent
set number
set autochdir

" Toggle floating terminal window
let g:floaterm_keymap_toggle = '<Leader>t'

" keybindings for switching between buffers
nnoremap <C-o> :bn<CR>
nnoremap <C-S-o> :bp<CR>

" fzf shortcut
nnoremap <C-f> :Files<CR>

" remap switch window
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" remap hide buffer
nnoremap <C-q> :hide<CR>

" map bluespec files
autocmd BufNewFile,BufRead *.bsv set ft=bsv
autocmd BufNewFile,BufRead *.ms  set ft=bsv

"Minispec
autocmd FileType bsv set textwidth=100
let b:verilog_indent_modules = 1

autocmd Filetype tex        set nosmartindent

" remap :noh
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>
