set nocompatible nobackup
set nohlsearch noincsearch
filetype on
filetype plugin indent on

set number ruler bs=2
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab

syntax on
if has("gui_running")
	set guifont=Liberation\ Mono\ 10
endif

autocmd FileType make setlocal noexpandtab
autocmd BufEnter *.c,*.h source ~/.vim/c.vim
autocmd BufEnter configure.ac :set filetype=m4
autocmd BufEnter *.hsc :set filetype=haskell
autocmd FileType haskell source ~/.vim/haskell.vim
autocmd FileType lhaskell source ~/.vim/haskell.vim
autocmd FileType html source ~/.vim/html.vim

au BufNewFile,BufRead *.md  setfiletype markdown

map <F5> :make
set makeprg=cabal\ build

map <F6> :%!stylish-haskell

set wildmenu
set wildmode=list:longest,full
set wildignore=*.o,*.hi,*~
