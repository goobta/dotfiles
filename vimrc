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
" Plugin 'liuchengxu/space-vim-dark'
" Plugin 'danilo-augusto/vim-afterglow'
" Plugin 'nightsense/carbonized'
" Plugin 'challenger-deep-theme/vim'
" Plugin 'w0ng/vim-hybrid'
Plugin 'morhetz/gruvbox'

" Support for TradingView's PINE script
Plugin 'jbmorgado/vim-pine-script'

" Plugins for bars on the top and the bottom
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Basic git integration
Plugin 'tpope/vim-fugitive'

" File viewer
Plugin 'scrooloose/nerdtree'

" Guides for Indents
" Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'

" Display marks in the gutter 
Plugin 'kshenoy/vim-signature'

" Autocomplete braces and such
Plugin 'Raimondi/delimitMate'

" IDE type autocomplete
Plugin 'ajh17/VimCompletesMe'

" Snippets
Plugin 'SirVer/ultisnips'

" Fuzzy File Finder
" Plugin 'kien/ctrlp.vim'
" Plugin 'wincent/command-t'
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plugin 'junegunn/fzf.vim'

" Advanced search
Plugin 'wincent/ferret'

" Autocomplete when searching
Plugin 'vim-scripts/SearchComplete'

" Openscad Support
Plugin 'sirtaj/vim-openscad'

" Async Code Execution
Plugin 'skywind3000/asyncrun.vim'

" Grammar checking
Plugin 'rhysd/vim-grammarous'

" LaTeX Live Preview
Plugin 'xuhdev/vim-latex-live-preview'

" Scala support
Plugin 'derekwyatt/vim-scala'

" Easy surroundings modifications
Plugin 'tpope/vim-surround'

" Show git diffs in the gutter
Plugin 'mhinz/vim-signify'

" Even more efficient vim motions
Plugin 'easymotion/vim-easymotion'

" Differnet colors on parentheses to make them ook better
Plugin 'kien/rainbow_parentheses.vim'

" Dockerfile support
Plugin 'ekalinin/Dockerfile.vim'

" Tag support
Plugin 'majutsushi/tagbar'

" Vundle Closing
call vundle#end()

" ---- Plugin Settings

" Custom fzf commands
" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* RG call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)

command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --glob "!*.log" --color "always" '.shellescape(<q-args>).'| tr -d "\017"', 1, <bang>0)

" ++ NERD Tree settings
" Disable NERD Tree arrows
let g:NERDTreeDirArrows=0

" Set F2 to open NERD Tree
" Set F3 to find the currently opened file 
" Set F4 to peek at a file
silent! map <F2> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>
let g:NERDTreeToggle="<F2>"
let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

" Bind grammar window to control - g
nmap <C-g> <Plug>(grammarous-open-info-window)

" Use vim spell check
let g:grammarous#use_vim_spelllang = 1

" Change PDF viewer to zathura
let g:livepreview_previewer = 'zathura'

" Change updates to 500 ms
set updatetime=500

let g:airline#extensions#tabline#enabled = 1

let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips/"
let g:UltiSnipsExpandTrigger="<c-]>"
let g:UltiSnipsJumpForwardTrigger="<c-]>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsRemoveSelectModeMappings = 0

" Deoplete initial setup
" let g:deoplete#enable_at_startup = 1
" let g:deoplete#enable_smart_case = 1

" Disable the candidates in Comment/String syntaxes.
" call deoplete#custom#source('_', \ 'disabled_syntaxes', ['Comment', 'String'])
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" set sources
" let g:deoplete#sources = {}
" let g:deoplete#sources.cpp = ['LanguageClient']
" let g:deoplete#sources.python = ['LanguageClient']
" let g:deoplete#sources.python3 = ['LanguageClient']
" let g:deoplete#sources.rust = ['LanguageClient']
" let g:deoplete#sources.c = ['LanguageClient']
" let g:deoplete#sources.vim = ['vim']

" if &term =~ "xterm" || &term =~ "screen"
"     let g:CommandTCancelMap = ['<ESC>', '<C-c>']
" endif

filetype plugin indent on

" ---- User settings ----

" Shows syntax
syntax on

" Show line numbering
set number
set relativenumber

" Soft wrapping
set wrap
set linebreak

" Highlight seraches by default
set hls

" Add incremental search
set incsearch

" Make searching case insensitive by default
set ignorecase
set smartcase

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

" Wrap guide at 92 chars
set colorcolumn=92

" 'nuff said
set encoding=utf-8

if has('nvim') || has('termguicolors')
  set termguicolors
endif

" Choose color scheme
set background=dark
colorscheme gruvbox
" colorscheme space-vim-dark
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
" let g:space_vim_dark_background = 235
" color space-vim-dark

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

" Adding support for moving up and down on wrapped lines
map j gj
map k gk

" Enable spell check on certain file types
autocmd FileType markdown setlocal spell spelllang=en_us
autocmd FileType tex setlocal spell spelllang=en_us

" Bind F5 to save file if modified and execute python script in a buffer.
" Tooken from https://stackoverflow.com/questions/18948491/running-python-code-in-vim
" ^ Thanks my dude!
nnoremap <silent> <F5> :call SaveAndExecutePython()<CR>
vnoremap <silent> <F5> :<C-u>call SaveAndExecutePython()<CR>

function! SaveAndExecutePython()
    " SOURCE [reusable window]: 
    " https://github.com/fatih/vim-go/blob/master/autoload/go/ui.vim

    " save and reload current file
    silent execute "update | edit"

    " get file path of current file
    let s:current_buffer_file_path = expand("%")

    let s:output_buffer_name = "Python"
    let s:output_buffer_filetype = "output"

    " reuse existing buffer window if it exists otherwise create a new one
    if !exists("s:buf_nr") || !bufexists(s:buf_nr)
        silent execute 'botright new ' . s:output_buffer_name
        let s:buf_nr = bufnr('%')
    elseif bufwinnr(s:buf_nr) == -1
        silent execute 'botright new'
        silent execute s:buf_nr . 'buffer'
    elseif bufwinnr(s:buf_nr) != bufwinnr('%')
        silent execute bufwinnr(s:buf_nr) . 'wincmd w'
    endif

    silent execute "setlocal filetype=" . s:output_buffer_filetype
    setlocal bufhidden=delete
    setlocal buftype=nofile
    setlocal noswapfile
    setlocal nobuflisted
    setlocal winfixheight
    setlocal cursorline " make it easy to distinguish
    setlocal nonumber
    setlocal norelativenumber
    setlocal showbreak=""

    " clear the buffer
    setlocal noreadonly
    setlocal modifiable
    %delete _

    " add the console output
    silent execute ".!time python " . shellescape(s:current_buffer_file_path, 1)

    " resize window to content length
    " Note: This is annoying because if you print a lot of lines then your code buffer is
    "   forced to a height of one line every time you run this function.
    " However without this line the buffer starts off as a default size and if you
    "   resize the buffer then it keeps that custom size after repeated runs of this
    "   function.
    "   But if you close the output buffer then it returns to using the default size
    "   when its recreated
    " execute 'resize' . line('$')

    " make the buffer non modifiable
    setlocal readonly
    setlocal nomodifiable
endfunction

" Time the executive time via <F4>
" http://liuchengxu.org/posts/use-vim-as-a-python-ide/
" nnoremap <F4> :call <SID>compile_and_run()<CR>

" augroup SPACEVIM_ASYNCRUN
"     autocmd!
"     " Automatically open the quickfix window
"     autocmd User AsyncRunStart call asyncrun#quickfix_toggle(15, 1)
" augroup END
" 
" function! s:compile_and_run()
"     exec 'w'
"     if &filetype == 'c'
"         exec "AsyncRun! gcc % -o %<; time ./%<"
"     elseif &filetype == 'cpp'
"        exec "AsyncRun! g++ -std=c++11 % -o %<; time ./%<"
"     elseif &filetype == 'java'
"        exec "AsyncRun! javac %; time java %<"
"     elseif &filetype == 'sh'
"        exec "AsyncRun! time bash %"
"     elseif &filetype == 'python'
"        exec "AsyncRun! time python %"
"     endif
" endfunction
