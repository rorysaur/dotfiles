" === NeoBundle initialize ===
set nocompatible  " something about being iMproved (required by NeoBundle)

if has('vim_starting')
  " set the runtime path to include NeoBundle
  set runtimepath+=~/.vim/bundle/neobundle.vim
endif

" initialize
call neobundle#begin(expand('~/.vim/bundle/'))

" let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" === plugins! ===

" === CtrlP: fuzzy finder
NeoBundle 'kien/ctrlp.vim'
" ctrl+p opens CtrlP
let g:ctrlp_map = '<C-p>'

" :CtrlP opens CtrlP
let g:ctrlp_cmd = 'CtrlP'

" === NERDTree: file drawer
NeoBundle 'scrooloose/nerdtree'
" open nerdtree when vim starts
autocmd vimenter * NERDTree

" toggle nerdtree
map <C-f> :NERDTreeToggle<cr>

" === ack: search keyword in project
NeoBundle 'mileszs/ack.vim'

" === vim-airline: pretty statusline
NeoBundle 'bling/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled=1
let g:airline_theme = 'wombat'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.branch = '⭠'

" === vim-commentary: comment stuff out
NeoBundle 'tpope/vim-commentary'

" === vim-fugitive: git fun
NeoBundle 'tpope/vim-fugitive'

" === YouCompleteMe: autocompletion
NeoBundle 'Valloric/YouCompleteMe'

" === vim-colors-solarized: pretty colors
NeoBundle 'altercation/vim-colors-solarized'
syntax enable
set background=dark
colorscheme solarized

" === tmuxline: tmux statusline that matches vim-airline theme
NeoBundle 'edkolev/tmuxline.vim'
let g:tmuxline_powerline_separators = 0
let g:tmuxline_preset = 'minimal'

" === languages
NeoBundle 'kchmck/vim-coffee-script'


" === NeoBundle cleanup ===
"
" end NeoBundle
call neobundle#end()

" don't know what this does
filetype plugin indent on

" prompts you to install any uninstalled bundles on startup
NeoBundleCheck


" === line numbers ===

" ctrl+n to toggle between relative and absolute numbers
" (relative by default)
set relativenumber

function! NumberToggle()
  if(&relativenumber == 1)
    set norelativenumber
    set number
  else
    set relativenumber
    set nonumber
  endif
endfunc

nnoremap <C-n> :call NumberToggle()<cr>


" === tabs & spaces ===

" how many columns to indent
set tabstop=2

" how many columns to indent/unindent with `<<` and `>>`
set shiftwidth=2

" how many columns to indent when pressing Tab in insert mode
set softtabstop=2

" pressing Tab produces space characters
set expandtab

" new lines use same indentation as previous line
set autoindent


" === line width / word wrap ===
set textwidth=79

" soft wrap
set wrap

" only break lines at characters listed in `breakat`
" don't break mid-word
set linebreak

" `list` must be disabled for `linebreak` to work
set nolist

" show a colored column at 85 characters
set colorcolumn=85


" === bottom of window command / status stuff ===

" always show statusline
set laststatus=2

" show mode (insert, visual, etc) in bottom line
" disabled because `laststatus=2` means mode is always shown?
" set showmode

" show command you are currently typing in bottom line
set showcmd

" show line and column info in statusline
" disabled because `laststatus=2` means ruler is always shown?
" set ruler

" enable a menu at the bottom of the window for command completion
set wildmenu

" on 1st tab while typing a command, a list of completions is shown
" and the command will be completed to the longest string that
" the completions have in common
" on 2nd tab, the wildmenu appears, where you can tab through
" the possible completions
set wildmode=list:longest,full


" === search ===

" automatically inserting `\v` at the beginning of every search
" makes search use normal regex instead of vim regex
nnoremap / /\v
vnoremap / /\v

" if your search is all lowercase, search is case-insensitive
" if one or more characters in your search is uppercase,
" search is case-sensitive
set ignorecase
set smartcase

" applies substitutions globally, e.g. automatically adds `g` flag
" to a substitution. to disable, add `g` again
set gdefault

" search incrementally (as you type each character)
set incsearch

" highlight search results
set hlsearch

" when jumping between search results, always vertically
" center current result
nnoremap n nzz
nnoremap N Nzz
nnoremap * *zz
nnoremap # #zz
nnoremap g* g*zz
nnoremap g# g#zz


" === key mappings ===

" remap <Leader> key from the default `\`
let mapleader = "\<Space>"

" when text is soft-wrapped and spans multiple lines,
" `j` and `k` will treat those lines as a single line.
" remapping to `gj` and `gk` allows you to always move
" by screen line, not file line.
nnoremap j gj
nnoremap k gk

" select text you just pasted
nnoremap <leader>v V`]

" tab navigation: new, prev, next
nnoremap <C-t> :tabnew<cr>
nnoremap <C-[> gT
nnoremap <C-]> gt
nnoremap <C-q> :tabclose<cr>

" to move between splits, use ctrl+<direction>
" instead of the default ctrl+w and then <direction>
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" or use <tab> to cycle through splits
nnoremap <tab> <C-w>w

" clear search result highlighting
nnoremap <leader>c :noh<cr>

" shortcuts
nnoremap <leader>w :w<cr>
nnoremap <leader>a :Ack


" === misc? ===

" don't make backups i guess
set noswapfile
set nowritebackup
set nobackup

" encoding for display in vim (not written to the file)
set encoding=utf-8

" scroll offset: minimum number of lines above/below the cursor
set scrolloff=5

" open new splits to right and below
set splitright
set splitbelow

" when opening a new file, hide the current buffer instead of closing it
set hidden

" when an error occurs, flash screen
" disabled because i'm using the iTerm setting
" set visualbell

" highlight line that the cursor is on
set cursorline

" enable fast terminal connection?
set ttyfast

" make backspace work 'normally': deletes indents, line breaks,
" and past the start of the current insert
set backspace=indent,eol,start

" persistent undo: save undo history after file is closed
set undofile

" directory in which to save undo history
set undodir=$HOME/.vim/undo

" use system clipboard
set clipboard=unnamed

" `vp` doesn't replace paste buffer
function! RestoreRegister()
  let @" = s:restore_reg
  return ''
endfunction
function! s:Repl()
  let s:restore_reg = @"
  return "p@=RestoreRegister()\<cr>"
endfunction
vmap <silent> <expr> p <sid>Repl()
