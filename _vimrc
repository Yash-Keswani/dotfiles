colorscheme morning
set guifont=JetBrains\ Mono:h10

noremap k gk
noremap gk k
noremap j gj
noremap gj j

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

au GUIEnter * simalt ~x

" -----------------------------------------------------------------------------
" Plugins
" -----------------------------------------------------------------------------


" -----------------------------------------------------------------------------
" Global Settings
" -----------------------------------------------------------------------------
let mapleader=','            " Set <leader> to ,
let g:mapleader=','
set autoread                 " Auto-reload changes from outside vim
set history=1000             " Keep a longer command history
set noerrorbells             " Disable error sounds
set visualbell               " Show errors visually instead
set laststatus=2             " Always show statusline
set clipboard+=unnamed       " Use system clipboard to copy / paste

" -----------------------------------------------------------------------------
" Search Options
" -----------------------------------------------------------------------------
set ignorecase               " Ignore case in searches...
set smartcase                " ...only if there is a capital in the search

" -----------------------------------------------------------------------------
" Formatting Options
" -----------------------------------------------------------------------------
set tabstop=2     " Width of a <TAB> is set to 2 spaces. Stil is a <TAB>
set shiftwidth=2  " Indents will have a width of 2
set smarttab      " Tab to the next tabstop

set autoindent    " Copy indent level when adding new lines
set smartindent   " Automatically add indent when adding new code blocks

set linebreak     " Visually wrap lines at convinent locations

set textwidth=81  " Automatically wrap lines at 80 characters

" -----------------------------------------------------------------------------
" Folding Settings
" -----------------------------------------------------------------------------
set foldmethod=indent " Fold on indent
set foldlevel=99      " Maximize folding capacity

" -----------------------------------------------------------------------------
" Plugin Global Settings
" -----------------------------------------------------------------------------
" -----------------------------------------------------------------------------
" Command Mappings
" -----------------------------------------------------------------------------
" Map ; to : to save the need to hold shift. Not like ; does much anyway
nnoremap ; :
" By default, it looks up man pages for the word under the cursor, which isn't
" very useful, so we map it to something else.
nnoremap <s-k> <CR>
" Save all
nnoremap <leader>s :wa<CR>
" Exit all
nnoremap <leader>q :qa!<CR>
" Toggle quickfix window when there is something to look at
nnoremap <leader>c :cw<CR>
" Disable find highlighting
nnoremap <leader>h :noh<CR>
" Toggle paste shortcut
nnoremap <leader>p :set invpaste paste?<CR>

" -----------------------------------------------------------------------------
" Navigation Mappings
" -----------------------------------------------------------------------------
" Disable arrow keys
nnoremap <down> <NOP>
nnoremap <up> <NOP>
nnoremap <left> <NOP>
nnoremap <right> <NOP>

" Navigating in insert
inoremap <C-k> <C-o>gk
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-j> <C-o>gj

" Simplified Tab Operations
nnoremap <C-Tab> gt
nnoremap <C-S-Tab> gT

" Use H and L to jump to beginning/end of line
nnoremap H ^
nnoremap L g_

" Select line with vv
nnoremap vv ^vg_

" tab to match
nnoremap <tab> %

nnoremap <leader>pp "+p

" Center on search results
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap * *zzzv
nnoremap # #zzzv
nnoremap g* g*zzzv
nnoremap g# g#zzzv

" -----------------------------------------------------------------------------
" Editing Mappings
" -----------------------------------------------------------------------------
" Let K be the opposite of J: split lines instead of joining them
nnoremap K i<CR><Esc>

" Fast replace the word under the cursor
nnoremap <leader>rr :%s/<C-r><C-w>/

nnoremap d "_d
nnoremap D "_D
vnoremap d "_d

nnoremap <leader>d ""d
nnoremap <leader>D ""D
vnoremap <leader>d ""d


" ----------------------------------------------------------------------------
" Auto Commands
" ----------------------------------------------------------------------------
" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

" Load machine specific customization
if filereadable(expand('~/.vim/custom.vim'))
  source ~/.vim/custom.vim
endif