
set backspace=2

if has("gui_running")
    set lines=55 columns=80
    set guioptions=-m
    set guifont=Courier_New:h14
    syntax on
endif

augroup vimrc
    au BufNewFile,BufRead .vimrc setl sw=4 sts=4 expandtab
augroup END

augroup cpp
    au BufNewFile,BufRead *.h,*.cc setl sw=4 sts=4 expandtab
augroup END

augroup python
    au BufNewFile,BufRead *.py setl sw=4 sts=4 expandtab
augroup END

augroup haskell
    au BufNewFile,BufRead *.hs setl sw=4 sts=4 expandtab
augroup END

