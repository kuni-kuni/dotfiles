syntax on

set number
set title
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=8
set autoindent
set splitbelow
set list
set listchars=tab:>.,trail:_,extends:>,precedes:<,nbsp:%

"search
set wrapscan
set ignorecase
set smartcase
set incsearch

set clipboard=unnamedplus

nnoremap <silent><C-e> :NERDTreeToggle<CR>

"NeoBundle
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'plasticboy/vim-markdown'
NeoBundle 'kannokanno/previm'
NeoBundle 'tyru/open-browser.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'grep.vim'
NeoBundle 'davidhalter/jedi-vim'

"Haskell
NeoBundle 'ujihisa/neco-ghc'
let g:haskellmode_completion_ghc = 0
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

NeoBundle 'Shougo/vimproc', {'build': {'linux': 'make -f make_unix.mak'}}
NeoBundle 'eagletmt/ghcmod-vim'
command T GhcModType
command TT GhcModTypeClear
hi ghcmodType ctermbg=blue
let g:ghcmod_type_highlight = 'ghcmodType'

NeoBundle 'travitch/hasksyn'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck

