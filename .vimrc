" Vim-plug configuration

" Plugins will be installed under the specified directory
call plug#begin('~/.vim/plugged')

" Declare the list of plugins

Plug 'jiangmiao/auto-pairs'

Plug 'lervag/vimtex'

" Configure vimtex settings
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'zathura'

Plug 'SirVer/ultisnips'
" Configure snippets settings // Trigger Config
let g:UltiSnipsExpandTrigger='<tab>'
let g:UltiSnipsJumpForwardTrigger='<tab>'
let g:UltiSnipsJumpBackwardTrigger='<s-tab>'
let g:UltiSnipsUsePythonVersion=3 

" :UltiSnipsEdit splits window // not sure if I want this feature
" let g:UltiSnipsEditSplit='vertical'     

Plug 'honza/vim-snippets'

Plug 'tmhedberg/Simpylfold'
let g:SimpylFold_docstring_preview=1

Plug 'vim-scripts/indentpython.vim'

"Plug 'Valloric/YouCompleteMe'
"let g:ycm_autoclose_preview_window_after_completion=1

Plug 'scrooloose/nerdtree'

Plug 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" Plug 'kien/ctrlp.vim'

" Plug 'vim-syntastic/syntastic'

Plug 'nvie/vim-flake8'

Plug 'mattn/emmet-vim'
let g:user_emmet_leader_key=','

" Plug 'altercation/vim-colors-solarized'

" Notes highlighting/italic/etc...
Plug 'bpstahlman/txtfmt'

call plug#end()         

" Spell check and fix
" setlocal spell
" set spelllang=en
" inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

" Aesthetic and functional changes
filetype plugin on
syntax on               " enable syntax processing
colorscheme molokai     " set colorscheme
let python_highlight_all=1

" Switch light/dark theme with F5
"call togglebg#map("<F5>")

set background=dark
set number	  	        " show line numbers
" set relativenumber    " MIGHT NOT KEEP!?!
set showcmd	  	        " show command in bottom bar
" set cursorline	  	" highlight current line
filetype indent on 	    " load filetype-specific indent files
set wildmenu		    " visual autocomplete for command menu
set showmatch		    " highlight matching [{()}]
set incsearch		    " search as characters are entered
set hlsearch		    " highlight matches

" turn off search highlights
nnoremap <leader><space> :nohlsearch<CR>
set foldenable 		    " enable folding

" space open/closes folds
nnoremap <space> za
set foldmethod=indent	" fold based on indent level
set foldlevel=99

" move vertically by visual line
" nnoremap j gj
" nnoremap k gk

" move to beginning/end of line
nnoremap B ^ 
nnoremap E $

" %/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" jk is ESC
inoremap jk <esc>

" specify where to split
set splitbelow
set splitright

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Properly format for Python files
au BufNewFile,BufRead *.py,*.c,*.cpp,*tex
    \ set tabstop=4
    \| set softtabstop=4
    \| set shiftwidth=4
    \| set textwidth=79
    \| set expandtab
    \| set autoindent
    \| set fileformat=unix

" Properly format for HTML, CSS, and JS.
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2
    \| set softtabstop=2
    \| set shiftwidth=2

" Format txt files with txtfmt plugin
au BufNewFile,BufRead *.txt
    \ set tabstop=4
    \| set softtabstop=4
    \| set shiftwidth=4
    \| set textwidth=79
    \| set expandtab
    \| set autoindent
    \| set fileformat=unix
    \| set ft=txtfmt

" Plugin ftypes will allow different settings for any file type

" Flagging unnecessary whitespace
" highlight BadWhitespace ctermbg=red guibg=darkred
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" UTF-8 support
set encoding=utf-8

" Clipboard
set clipboard=unnamed

" VIM commands everywhere - add set editing-mode vi to ~/.inputrc
