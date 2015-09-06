set expandtab
set softtabstop=4
set autoindent
set number

set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'ujihisa/neco-ghc'
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

NeoBundle 'Shougo/vimproc'
NeoBundle 'eagletmt/ghcmod-vim'
command T GhcModType
command TT GhcModTypeClear
hi ghcmodType ctermbg=blue
let g:ghcmod_type_highlight = 'ghcmodType'

NeoBundle 'travitch/hasksyn'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck

