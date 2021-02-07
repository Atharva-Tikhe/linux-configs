          __             _____________________                         
"        //\\            = = = = = = = = = = = 
"       //  \\                     ▓         
"      //    \\                    ▓ 
"     //      \\                   ▓
"    //========\\                  ▓
"   //          \\                 ▓
"  //            \\                ▓
" //              \\               ▓


"  this configuration used Vundle as its Plugin manager
"  [git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim] <- to install vundle on new system

syntax enable
set tabstop=4
set number
set relativenumber
set smartindent
"set noncompatible
filetype off
set mouse=nicr
set clipboard=unnamed


" PLUGINS

set rtp+=/home/atharva/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'powerline/powerline'
Plugin 'itchyny/lightline.vim'
Plugin 'vimwiki/vimwiki'
Plugin 'preservim/nerdtree'
Plugin 'vim-python/python-syntax'
Plugin 'ap/vim-css-color'
Plugin 'tpope/vim-surround'
Plugin 'Raimondi/delimitMate'
call vundle#end()


let delimitMate_expand_cr = 1 "Auto delimit

filetype plugin indent on

"Remap ESC to ii
:imap ii <Esc>

"powerline

let g:lighline = {'colorscheme':'dracula',}


set laststatus=2

set t_Co=256

let g:rehash256=1
set noshowmode "prevent previous mode from showing under powerline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Text related stuff

set expandtab
set smarttab

set shiftwidth=4
set tabstop=4

" NERDTree
let mapleader = ","
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>. :NERDTree <CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>



let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = 'v'
let NERDTreeShowLineNumbers=1
let NERDTreeShowHidden=1
let NERDTreeMinimalUI=1
let g:NERDTreeWinSize=38



highlight LineNr           ctermfg=8    ctermbg=none    cterm=none
highlight CursorLineNr     ctermfg=7    ctermbg=8       cterm=none
highlight VertSplit        ctermfg=0    ctermbg=8       cterm=none
highlight Statement        ctermfg=2    ctermbg=none    cterm=none
highlight Directory        ctermfg=4    ctermbg=none    cterm=none
highlight StatusLine       ctermfg=7    ctermbg=8       cterm=none
highlight StatusLineNC     ctermfg=7    ctermbg=8       cterm=none
highlight NERDTreeClosable ctermfg=2
highlight NERDTreeOpenable ctermfg=8
highlight Comment          ctermfg=4    ctermbg=none    cterm=none
highlight Constant         ctermfg=12   ctermbg=none    cterm=none
highlight Special          ctermfg=4    ctermbg=none    cterm=none
highlight Identifier       ctermfg=6    ctermbg=none    cterm=none
highlight PreProc          ctermfg=5    ctermbg=none    cterm=none
highlight String           ctermfg=12   ctermbg=none    cterm=none
highlight Number           ctermfg=1    ctermbg=none    cterm=none
highlight Function         ctermfg=1    ctermbg=none    cterm=none


set path+=**					" Searches current directory recursively.
set wildmenu					" Display all matches when tab complete.
set incsearch
set nobackup
set noswapfile

let g:minimap_highlight='Visual'

let g:python_highlight_all = 1

au! BufRead,BufWrite,BufWritePost,BufNewFile *.org
au BufEnter *.org            call org#SetOrgFileType()

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

function! CleanExtraSpaces() "Function to clean unwanted spaces
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun


autocmd BufWritePre * :call CleanExtraSpaces()

setglobal termencoding=utf-8 fileencodings=
scriptencoding utf-8
set encoding=utf-8

autocmd BufNewFile,BufRead  *   try
autocmd BufNewFile,BufRead  *   set encoding=utf-8
autocmd BufNewFile,BufRead  *   endtry



let $LANG='en'
"Setting env LANG var to english

set langmenu=en
"Setting menu language to en

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

