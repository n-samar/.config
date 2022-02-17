set nocompatible
filetype plugin indent on     " required

" remap : to ; and vis versa
nnoremap : ;
nnoremap ; :

" turn hybrid line numbers on
:set number relativenumber
:set nu rnu

" ignore case
:set ignorecase
:set smartcase
:set infercase " used so ignorecase interacts well with autocompletion

" tabs are spaces
:set expandtab

" highlight redundant whitespace and all tabs
highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
:match ExtraWhitespace /\s\+$/
:autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
:autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
:autocmd InsertLeave * match ExtraWhitespace /\s\+$/
:autocmd BufWinLeave * call clearmatches()

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
noremap <Esc> ""

" set the runtime path to include Vundle and initialize
set rtp+=/data/sanchez/users/nsamar/.vim/bundle/Vundle.vim
call vundle#rc("/data/sanchez/users/nsamar/.vim/bundle")
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'mtikekar/vim-bsv'
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'   " status bar
Plugin 'vim-airline/vim-airline-themes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ctrlpvim/ctrlp.vim' " Fuzzy search, file opening
Plugin 'voldikss/vim-floaterm' " Vim floating terminal
Plugin 'VimCompletesMe'  " vim autocomplete
Plugin 'mileszs/ack.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'rhysd/vim-clang-format'
Plugin 'sickill/vim-pasta'
Plugin 'tpope/vim-unimpaired'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
filetype plugin on

" Enable matchit plugin
runtime macros/matchit.vim

syntax on
set colorcolumn=80

" allows <Esc> to transition terminal->normal mode
tnoremap <Esc> <C-\><C-n>

let g:solarized_visibility = "high"
let g:solarized_termcolors=16
let g:solarized_contrast = "high"
syntax enable
set background=light
colorscheme solarized


set tabstop=4
set shiftwidth=4
set encoding=utf-8
set autoindent
set number

" Toggle floating terminal window
let g:floaterm_keymap_toggle = '<C-s>'

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


autocmd Filetype tex        set nosmartindent

" auto clang-format .c, .h, .cpp, .cc, and .hpp files on each buffer write
autocmd FileType c,h,cpp,hpp,cc ClangFormatAutoEnable
let g:clang_format#enable_fallback_style = 0

" set :make to run scons
set makeprg=/data/sanchez/users/nsamar/bin/scons\ -j16

" change swap file location
:set directory=/data/sanchez/users/nsamar/.config/nvim/swapfiles/

"Minispec
autocmd FileType bsv set textwidth=100
let b:verilog_indent_modules = 1
