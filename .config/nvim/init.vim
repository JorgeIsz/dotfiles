filetype plugin on

source ~/.config/nvim/cocconfig.vim
source ~/.config/nvim/fzfconfig.vim

set number
set rnu

set expandtab           " enter spaces when tab is pressed
set tabstop=2           " use 4 spaces to represent tab
set softtabstop=2
set shiftwidth=2       " number of spaces to use for auto indent
set autoindent          " copy indent from current line when starting a new line
set nowrap
set nocompatible

set clipboard+=unnamedplus


set ignorecase
set smartcase
" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path=.,,**

" Display all matching files when we tab complete
set wildmenu
set wildignore+=.git,node_modules


" --- netrw ---

let g:netrw_banner = 0
let g:netrw_liststyle = 3

" --- netrw end ---


call plug#begin(expand('~/.config/nvim/plugged'))

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mg979/vim-visual-multi'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

Plug 'SirVer/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'

Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

call plug#end()

" -- spaceduck theme ---

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

colorscheme spaceduck

hi Normal guibg=NONE ctermbg=NONE
hi EndOfBuffer guibg=NONE ctermbg=NONE

" -- spaceduck theme end --


nmap <F5> :Buffers<CR>
nmap <F6> :FZF<CR>

nmap <A-j> :bp<CR>
nmap <A-k> :bn<CR>

let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.branch = ''
  
" --- Coc config ---

let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ 'coc-eslint',
    \ 'coc-prettier',
 \]

" --- Coc config end ---

command! -nargs=0 Prettier :CocCommand prettier.formatFile


" ---Python config---

let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'

set pyxversion=3
