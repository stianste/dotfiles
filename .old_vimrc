" Best view with a 256 color terminal and Powerline fonts
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" ------Plugins-------
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'gcmt/breeze.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'SirVer/ultisnips'
Plugin 'tomtom/tcomment_vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'airblade/vim-gitgutter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'

Plugin 'tmhedberg/SimpylFold'
Plugin 'scrooloose/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'Raimondi/delimitMate'
Plugin 'easymotion/vim-easymotion'
Plugin 'ElmCast/elm-vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'hdima/python-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'vim-latex/vim-latex'
Plugin 'Yggdroot/indentLine'

" Color Themes
Plugin 'flazz/vim-colorschemes'
Plugin 'morhetz/gruvbox'
Plugin 'tyrannicaltoucan/vim-quantum'

call vundle#end()
colorscheme quantum
" Good alternatives: Monokai, gruvbox, quantum, Tomorrow-Night
set background=dark "Setting dark mode

" Fixes trouble with tmux background
set t_ut=

if (has("termguicolors"))
  set termguicolors
endif

" Youcompleteme sometimes starts acting out when editing latex. This line
" disables it.
" let g:loaded_youcompleteme = 1

filetype plugin indent on
filetype plugin on

syntax enable
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2
set softtabstop=2
set autoindent
set relativenumber
set showcmd
set splitbelow
set splitright
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType javascript setlocal shiftwidth=2 tabstop=2
autocmd FileType python setlocal shiftwidth=2 tabstop=2
" autocmd FileType python setlocal shiftwidth=4 tabstop=4
let mapleader = ','

""""""""

" Use :help 'option' to see the documentation for the given option.
set backspace=indent,eol,start
set complete-=i
set showmatch
set showmode
set smarttab

set nrformats-=octal
set shiftround

set ttimeout
set ttimeoutlen=50

set laststatus=2
set ruler
set wildmenu

set autoread

set encoding=utf-8
set tabstop=2 shiftwidth=2 expandtab
set listchars=tab:▒░,trail:▓
set list

inoremap <C-U> <C-G>u<C-U>

" Use graphical line movements
noremap j gj
noremap k gk

set number
set hlsearch
set incsearch
set ignorecase
set smartcase

" Enable spell checking

set spell spelllang=en_us

" Set max linelength, currently not enabled because it get's really bothersome
" when reading others code and they are over max line length
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%80v.\+/

" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za
set laststatus=2

" Show highlighting group for current word
nmap <F2> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

"Keep text selected after indenting
vnoremap > >gv
vnoremap < <gv

" do not history when leavy buffer
set hidden

set nobackup
set nowritebackup
set noswapfile
set fileformats=unix,dos,mac

" exit insert mode
inoremap <C-c> <Esc>

set completeopt=menuone,longest,preview

"Let enter make a new line without entering insert mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

"
" Plugins config
"
"Syntastic with eslint
"
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'

" Latex-suite
"
set grepprg=grep\ -nH\ $*
let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_MultipleCompileFormats='pdf, aux'

" Gruvbox

let g:gruvbox_constrast_dark_hard = 'hard'

" Fix you complete me error
let g:ycm_server_use_vim_stdout = 0
let g:ycm_path_to_python_interpreter = '/usr/bin/python'

" NERDTree
nnoremap <S-N> :NERDTreeToggle<CR>

" CtrlP
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<c-t>'],
    \ 'AcceptSelection("t")': ['<cr>', '<2-LeftMouse>'],
    \ }

" Ultisnip
" NOTE: <f1> otherwise it overrides <tab> forever
let g:UltiSnipsExpandTrigger="<f1>"
let g:UltiSnipsJumpForwardTrigger="<f1>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:did_UltiSnips_vim_after = 1

" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

"
" Basic shortcuts definitions
"  most in visual mode / selection (v or ⇧ v)
"

" Find
map <C-f> /
" indend / deindent after selecting the text with (⇧ v), (.) to repeat.
vnoremap <Tab> >
vnoremap <S-Tab> <
" comment / decomment & normal comment behavior
vmap <C-m> gc
" Disable tComment to escape some entities
let g:tcomment#replacements_xml={}
" Text wrap simpler, then type the open tag or ',"
vmap <C-w> S
" Tabs
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled = 1
nnoremap <C-b>  :tabprevious<CR>
inoremap <C-b>  <Esc>:tabprevious<CR>i
nnoremap <C-n>  :tabnext<CR>
inoremap <C-n>  <Esc>:tabnext<CR>i
nnoremap <C-t>  :tabnew<CR>
inoremap <C-t>  <Esc>:tabnew<CR>i
nnoremap <C-k>  :tabclose<CR>
inoremap <C-k>  <Esc>:tabclose<CR>i

nnoremap <Leader>p :set paste<CR>
nnoremap <Leader>o :set nopaste<CR>

" GitGutter
noremap  <Leader>g :GitGutterToggle<CR>
let g:gitgutter_sign_added = '+'
let g:gitgutter_sign_modified = 'Δ'
let g:gitgutter_sign_removed = '✘'

" this machine config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
