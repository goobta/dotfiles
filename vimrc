" This is test so
" VIMRC for Ankur Gupta

" Vundle Init
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle Plugins 

" Vundle Base Plugin
Plugin 'VundleVim/Vundle.vim'

" Theme
" Plugin 'jpo/vim-railscasts-theme'
" Plugin 'pR0Ps/molokai-dark'
" Plugin 'dracula/vim'
" Plugin 'junegunn/seoul256.vim'
" Plugin 'chriskempson/base16-vim'
" Plugin 'ajmwagar/vim-deus'
" Plugin 'dracula/vim'
Plugin 'liuchengxu/space-vim-dark'

" Plugins for bars on the top and the bottom
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Basic git integration
Plugin 'tpope/vim-fugitive'

" File viewer
Plugin 'scrooloose/nerdtree'

" Guides for Indents
Plugin 'nathanaelkane/vim-indent-guides'

" Display marks in the gutter 
Plugin 'kshenoy/vim-signature'

" Autocomplete braces and such
Plugin 'Raimondi/delimitMate'

" IDE type autocomplete
Plugin 'ajh17/VimCompletesMe'

" Java autocompletion
" Plugin 'artur-shaik/vim-javacomplete2'

" Snippets
" Plugin 'SirVer/ultisnips'

" Add Racket Support
Plugin 'wlangstroth/vim-racket'

" Fuzzy File Finder
Plugin 'kien/ctrlp.vim'

" Autocomplete when searching
Plugin 'vim-scripts/SearchComplete'

" Background Lint Engine
" Plugin 'w0rp/ale'

" Vundle Closing
call vundle#end()

autocmd FileType python setlocal foldmethod=indent smartindent shiftwidth=4 ts=4 et cinwords=if,elif,else,for,while,try,except,finally,def,class

let g:NERDTreeDirArrows=0

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors = 1
let g:indent_guides_guide_size=1
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=235
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=234

let g:airline#extensions#tabline#enabled = 1

" let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips/"
" let g:UltiSnipsExpandTrigger="<c-]>"
" let g:UltiSnipsJumpForwardTrigger="<c-]>"
" let g:UltiSnipsJumpBackwardTrigger="<c-[>"

filetype plugin indent on

" User settings
" Shows syntax
syntax on

" Show line numbering
set number
set relativenumber

" Dabbing, wait, shit! I mean tabbing!
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Left column width
set foldcolumn=6

" Fix backspace
set backspace=indent,eol,start

" Pretty dank cursor column highlighting
set cursorcolumn

" Wrap guide at 80 chars
set colorcolumn=80

" 'nuff said
set encoding=utf-8

" Choose color scheme
colorscheme space-vim-dark
" colorscheme railscasts
" colorscheme molokai-dark
" colorscheme darcula
" color dracula
" colo seoul256
" colorscheme default
" colorscheme ron
" color dracula

"   Range:   233 (darkest) ~ 238 (lightest)
"   Default: 235
let g:space_vim_dark_background = 235
color space-vim-dark

" Toggle Nerd Tree to F2
map <F2> :NERDTreeToggle<CR>

" Macros for windowed mode
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <F7> <C-w>+
map <F8> <C-w>-
map <F9> <C-w><
map <F10> <C-w>>

" Adding lines when in normal mode
map <Enter> o<ESC>

" Toggle folds with space bar in normal mode
nnoremap <space> za

" Surround the highlighted string
map <Leader>9 s()<ESC>P
map <Leader>[ s[]<ESC>P
map <Leader>; s''<ESC>P
map <Leader>' s""<ESC>P
map <Leader>, s<><ESC>P
map <Leader>d <ESC>`>x`<x

