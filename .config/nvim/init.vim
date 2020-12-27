filetype plugin on

source ~/.config/nvim/cocconfig.vim

set number
set rnu
set shiftwidth=4
set tabstop=4
set autoindent
set nowrap

call plug#begin(expand('~/.config/nvim/plugged'))

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mg979/vim-visual-multi'
Plug 'scrooloose/nerdtree'
Plug 'leafgarland/typescript-vim'
Plug 'dart-lang/dart-vim-plugin'
Plug 'SirVer/ultisnips'
Plug 'morhetz/gruvbox'
Plug 'evanleck/vim-svelte', {'branch': 'main'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'Shougo/neco-vim'
Plug 'neoclide/coc-neco'
Plug 'tpope/vim-fugitive'
Plug 'frazrepo/vim-rainbow'
Plug 'maxmellon/vim-jsx-pretty'

call plug#end()


nmap <F6> :NERDTreeToggle<CR>
let g:UltiSnipsExpandTrigger="<c-s>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:airline#extensions#tabline#enabled = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_symbols.branch = ''
  
au FileType dart call rainbow#load()
let g:rainbow_guifgs = ['RoyalBlue3', 'DarkOrange3', 'DarkOrchid3', 'FireBrick']
let g:rainbow_ctermfgs = ['lightblue', 'lightgreen', 'yellow', 'red', 'magenta']


"---Python config---

let g:python_host_prog = '/usr/bin/python2'
let g:python3_host_prog = '/usr/bin/python3'


colorscheme gruvbox
let g:airline_theme='gruvbox'
let g:gruvbox_transparent_bg=1
set background=dark

set pyxversion=3
