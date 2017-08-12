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
Plugin 'jpo/vim-railscasts-theme'

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

" Snippets
Plugin 'SirVer/ultisnips'

" Vundle Closing
call vundle#end()

let g:NERDTreeDirArrows=0

let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=235
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=234

let g:airline#extensions#tabline#enabled = 1

let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips/"
let g:UltiSnipsExpandTrigger="<Space><Space>"
let g:UltiSnipsJumpForwardTrigger="<Space><Space>"
let g:UltiSnipsJumpBackwardTrigger="<c-.>"

filetype plugin indent on

" User settings
syntax on

set number
set relativenumber

set tabstop=4
set shiftwidth=4
set softtabstop=4

set encoding=utf-8

colorscheme railscasts

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
