
syntax on

set backspace=2

set modeline

if has("gui_running")
    set lines=55 columns=80
    set guioptions=-m
    set guifont=Courier_New:h14
    syntax on
endif

filetype plugin indent on

set nohlsearch
"set nocindent
"set noautoindent

if &term ==? "xterm"
    set t_Co=256
endif

" Always show statusline.
set laststatus=2

" Status line detail:
" %f     file path
" %y     file type between braces (if defined)
" %([%R%M]%)   read-only, modified and modifiable flags between braces
" %=     right-align following items
" #%n    buffer number
" %l/%L,%c%V   line number, total number of lines, and column number
let &stl="%f %y%([%R%M]%)%=#%n %l/%L,%c%V "

augroup vimrc
    au BufNewFile,BufRead .vimrc setl sw=4 sts=4 expandtab
    au FileType vim setl indentexpr=
augroup END

augroup cpp
    au BufNewFile,BufRead *.h,*.cc setl sw=4 sts=4 expandtab
    au FileType cpp setl nocindent
augroup END

augroup python
    au BufNewFile,BufRead *.py setl sw=4 sts=4 expandtab
augroup END

augroup haskell
    au BufNewFile,BufRead *.hs setl sw=4 sts=4 expandtab
augroup END

augroup php
    au BufNewFile,BufRead *.php setl sw=4 sts=4 expandtab
augroup END

augroup html
    au BufNewFile,BufRead *.html setl sw=4 sts=4 expandtab
augroup END

augroup xml
    au BufNewFile,BufRead *.xml setl sw=4 sts=4 expandtab
augroup END

augroup ml
    au BufNewFile,BufRead *.ml setl sw=4 sts=4 expandtab
augroup END

augroup java
    au BufNewFile,BufRead *.java setl sw=4 sts=4 expandtab
    au FileType java setl nocindent indentexpr=
augroup END

augroup scheme
    au FileType scheme setl sw=2 sts=2 expandtab
augroup END

