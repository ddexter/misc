set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
call vundle#end() 
filetype plugin indent on 

syntax enable
set background=dark
colorscheme solarized

" Searching
set hlsearch
set ignorecase
set smartcase
set incsearch
set showmatch

" Generic indentation
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set smartindent

" Misc
set number
set nowrap
set nocompatible
set colorcolumn=81

" Command line completion
set wildmenu

filetype plugin indent on

autocmd FileType python,py set et smarttab smartindent autoindent
autocmd FileType python,py highlight BadWhitespace ctermbg=red guibg=red
autocmd FileType c,cpp,java set cindent
autocmd FileType perl set cindent
autocmd FileType css,less set shiftwidth=4 softtabstop=4
autocmd FileType html set shiftwidth=2 softtabstop=2
autocmd FileType javascript,js set shiftwidth=4 softtabstop=4
autocmd FileType htmldjango set shiftwidth=2 softtabstop=2
autocmd FileType velocity,vm set shiftwidth=2 softtabstop=2
autocmd FileType r set shiftwidth=2 softtabstop=2

" Enable syntax
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.html set filetype=htmldjango
au BufNewFile,BufRead *.vm set filetype=velocity 
au BufNewFile,BufRead *.R set filetype=r
au BufNewFile,BufRead *.r set filetype=r

" Vundle
filetype plugin indent on
set rtp+=~/.vim/bundle/vundle
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'scrooloose/syntastic'
Bundle 'altercation/vim-colors-solarized'

"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" Check on buffer load
" let g:syntasstic_check_on_open=1

" Remap split window navigation to hjkl
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-l> :wincmd l<CR>

