set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" ------Plugins-------
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'jiangmiao/auto-pairs'
Plugin 'kien/ctrlp.vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'easymotion/vim-easymotion'
Plugin 'Yggdroot/indentLine'

" Color Themes
Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'
Plugin 'tyrannicaltoucan/vim-quantum'

call vundle#end()

"
" Appearance related
"

colorscheme gruvbox
" Good alternatives: Monokai, gruvbox, quantum, Tomorrow-Night

set background=dark "Setting dark mode

set t_ut= "Fixes trouble with tmux background

if (has("termguicolors"))
  set termguicolors
endif

"
" Spacing
"

filetype plugin indent on
syntax enable
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set autoindent

"
" Settings
"

set encoding=utf-8

set nobackup
set nowritebackup
set noswapfile

set number
set relativenumber

set splitbelow
set splitright

set showcmd

set showmode
set showmatch
set matchtime=2

set ruler

set list
set listchars=tab:▒░,trail:▓

" Use graphical line movements
noremap j gj
noremap k gk

" Search
set hlsearch
set incsearch
set smartcase

" Enable spell checking
set spell spelllang=en_us

"
"Mappings
"

let mapleader = ','
map <C-n> :NERDTreeToggle<CR>

"
" Plugins config
"

"Syntastic with eslint
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'

" Gruvbox
let g:gruvbox_constrast_dark_hard = 'hard'

" Fix you complete me error
let g:ycm_server_use_vim_stdout = 0
let g:ycm_path_to_python_interpreter = '/usr/bin/python'

" vim-airline
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" GitGutter
noremap  <Leader>g :GitGutterToggle<CR>
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = 'Δ'
let g:gitgutter_sign_removed = '✘'

" UltiSnips
let g:UltiSnipsExpandTrigger="<c-Space>"
let g:UltiSnipsJumpForwardTrigger="<c-y>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" :UltiSnipsEdit split window.
let g:UltiSnipsEditSplit="vertical"
