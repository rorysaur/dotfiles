" === plugins! ===

" specify a directory for plugins
call plug#begin('~/stuff/dotfiles/vim/plugged')

" === NERDTree: file drawer
Plug 'scrooloose/nerdtree'

" open nerdtree when vim starts
autocmd vimenter * NERDTree

" toggle nerdtree
map <C-f> :NERDTreeToggle<cr>

" === fzf: fuzzy finder
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" ctrl+p to open fzf
map <C-p> :FZF<cr>

" colors
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Identifier'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" === ack: search keyword in project
Plug 'mileszs/ack.vim'

" ack uses ripgrep
let g:ackprg = 'rg --vimgrep --no-heading'

Plug 'neoclide/coc.nvim', { 'branch': 'release' }
" see end of this file for coc.nvim config

" autocomplete
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" let g:deoplete#enable_at_startup = 1
" inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" === vim-airline: pretty statusline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled=1
let g:airline_theme = 'wombat'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols.branch = '⭠'

" === pretty
Plug 'Yggdroot/indentLine'
let g:indentLine_char = '⎸'

Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'junegunn/rainbow_parentheses.vim'
augroup rainbow_lisp
  autocmd!
  autocmd FileType javascript,ruby RainbowParentheses
augroup END
let g:rainbow#pairs = [['(', ')'], ['[', ']']]

" === type stuff faster
Plug 'tpope/vim-surround'
Plug 'rstacruz/vim-closer'
Plug 'alvan/vim-closetag'
let g:closetag_filenames = '*.html,*.jsx,*.xml,*.njk'

" === vim-commentary: comment stuff out
Plug 'tpope/vim-commentary'

" === vim-fugitive: git fun
Plug 'tpope/vim-fugitive'

" === Brogrammer: pretty colors
set background=dark
colorscheme brogrammer

" === tmuxline: tmux statusline that matches vim-airline theme
Plug 'edkolev/tmuxline.vim'
let g:tmuxline_powerline_separators = 0
let g:tmuxline_preset = 'minimal'

" === languages
Plug 'sheerun/vim-polyglot'
Plug 'kchmck/vim-coffee-script'
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'lepture/vim-jinja'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

" don't let indentLine mess up markdown and jsoN
let g:vim_json_syntax_conceal = 0
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

" === ESLint
" Plug 'w0rp/ale'
" let g:ale_sign_error = '✘'
" let g:ale_sign_warning = '⚠'
" let g:ale_set_highlights = 0
" highlight ALEErrorSign ctermbg=233 ctermfg=9
" highlight ALEWarningSign ctermbg=233 ctermfg=11

" Initialize plugin system
call plug#end()


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
nnoremap <leader>a :Ack! 
nnoremap <leader>l :ALEToggle<cr>


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

" don't let neovim change the cursor shape
set guicursor=

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

" jbuilder syntax highlighting
au BufNewFile,BufRead *.jbuilder set ft=ruby


" === coc.nvim config ===
" (mostly copy-pasted from the example config)
"
let g:coc_global_extensions = [
  \ 'coc-css',
  \ 'coc-tsserver',
  \ 'coc-html',
  \ 'coc-json',
  \ 'coc-eslint',
  \ 'coc-prettier'
  \ ]

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
" inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
"                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)
