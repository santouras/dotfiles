set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'chriskempson/base16-vim'

Plugin 'bling/vim-airline'

Plugin 'kien/ctrlp.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'editorconfig/editorconfig-vim'

Plugin 'tpope/vim-fugitive'

Plugin 'mileszs/ack.vim'

Plugin 'airblade/vim-gitgutter'

Plugin 'ekalinin/Dockerfile.vim'

call vundle#end()            " required
filetype plugin indent on    " required


syntax enable

" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" open NERDtree with ctrl+n
map <C-n> :NERDTreeToggle<CR>

" Needed for airline to show the status bar
set laststatus=2

" set airline theme
:let g:airline_theme='wombat'

" vim.ack should use ag
:let g:ackprg = 'ag --nogroup --nocolor --column'

set t_Co=256
let base16colorspace=256  " Access colors present in 256 colorspace

" set the colour scheme
colorscheme base16-default
set background=dark

" Highlight our whitespace
highlight ExtraWhitespace ctermbg=DarkGray guibg=DarkGray
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+\%#\@<!$/

hi WhiteSpaces gui=undercurl guifg=LightGray
match WhiteSpaces / \+/

" no backups!
set nobackup
set nowb
set noswapfile

" Be smart when using tabs ;)
set smarttab

" Indent with two spaces
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" Show relative line numbers
set relativenumber

" columns
set ruler

" split right/below
set splitbelow
set splitright

" remove ctrl+w from split navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Smart indenting when starting new line
set smartindent

set ruler
set ignorecase
set smartcase

set hlsearch
set incsearch

" Mouse for scrolling etc in console.
set mouse=a

" Resize split panes with mouse within tmux.
" Also get live-updated text selection with mouse drag.
set ttymouse=xterm2

