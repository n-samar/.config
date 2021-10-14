set nocompatible              " be iMproved, required
filetype plugin indent on     " required

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
Plugin 'vim-syntastic/syntastic'
Plugin 'mileszs/ack.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

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

" syntastic recommended settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages = { 'regex': 'structured bindings' }
let g:syntastic_python_checker = ['python']
let g:syntastic_python_python_exec = 'python3'

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