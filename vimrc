call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-sensible'
Plug 'junegunn/seoul256.vim'
Plug 'scrooloose/nerdtree'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'xolox/vim-notes'
Plug 'xolox/vim-misc'
Plug 'morhetz/gruvbox'
Plug 'yggdroot/indentline'
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'posva/vim-vue'
Plug 'nielsmadan/harlequin'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'chiel92/vim-autoformat'
Plug 'vim-scripts/utl.vim'
Plug 'w0rp/ale'
Plug 'manasthakur/vim-commentor'
Plug 'zefei/vim-wintabs'
Plug 'zefei/vim-wintabs-powerline'
Plug 'valloric/youcompleteme'
Plug 'shougo/echodoc'
Plug 'jiangmiao/auto-pairs'
Plug 'wincent/terminus'
Plug 'leafgarland/typescript-vim'
Plug 'fatih/vim-go'
call plug#end()

"############## VIM DEFAULT CONFIGURATIONS ###################
"
"disable readonly when files are opened
set noro 

set noerrorbells visualbell t_vb= 	"disable visual bell
set belloff=all				"disable sound bell

syntax on		"turn on highlights for syntax/text
filetype plugin on	"context checking for filetypes and related plugins
set nobackup		"no backup files
set nowritebackup	"no backup while editing
set noswapfile 		"no swap files

color dracula "Theme

set encoding=utf-8 	"UTF-8 Default
set fileencoding=utf-8 	"UTF-8 Default

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h9 "set default font
set hidden "files stay in buffers instead of being removed

" set default directory of .swp files that are used to store changes in
" buffers in case of crashing
set directory^=$HOME/.vim/temp//

"############## PLUGIN CONFIGURATIONS ###################
"
" airline
let g:airline_powerline_fonts = 1 	"airline styling
let g:airline_theme='dark'		"airline colors

" ctrl p
let g:ctrlp_custom_ignore = 'node_modules'
let g:ctrlp_by_filename = 1
let g:ctrlp_working_path_mode = 'a'

" gitgutter
set updatetime=100

" numbertoggle 
set number norelativenumber

" set 80 golden rule - line rule
" highlight ColorColumn ctermbg=black guibg=black   					
" set colorcolumn=80

" indent rules

" --------------- Workplace -----------------
autocmd FileType javascript 	setlocal shiftwidth=2 tabstop=2
autocmd FileType html		setlocal shiftwidth=2 tabstop=2

" Ale (Linting & File formatter)
let g:ale_linters =  { 
			\'typescript': ['eslint'], 
			\'javascript': ['eslint'] 
			\}
let g:ale_fixers = { 
			\'typescript': ['prettier','eslint'], 
			\'javascript': ['prettier','eslint'] 
			\}

let g:ale_fix_on_save = 1
let g:ale_open_list =1
let g:ale_javascript_eslint_use_global = 1

" NERDTree quick open
nmap <F8> :NERDTreeToggle<CR>

" wintabs default key mappings
map <C-H> <Plug>(wintabs_previous)
map <C-L> <Plug>(wintabs_next)
map <C-T>c <Plug>(wintabs_close)
map <C-T>u <Plug>(wintabs_undo)
map <C-T>o <Plug>(wintabs_only)
map <C-W>c <Plug>(wintabs_close_window)
map <C-W>o <Plug>(wintabs_only_window)

" Leader better keys
:let mapleader = ","

" YouCompleteMe mappings
nnoremap <C-j> :YcmCompleter GoToDeclaration<CR>
let g:ycm_key_list_stop_completion = ['<C-y>', '<CR>']
" let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_autoclose_preview_window_after_completion  = 1

" NERDTree-git symbols for git
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
