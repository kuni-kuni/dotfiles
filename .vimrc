syntax on

set number
set title
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=8
set autoindent
set splitbelow
set noswapfile
set list
set listchars=tab:>.,trail:_,extends:>,precedes:<,nbsp:%
set clipboard=unnamedplus

"search
set wrapscan
set ignorecase
set smartcase
set incsearch

"エンコード、改行コード自動判別
set encoding=utf-8
set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
set fileformats=unix,dos,mac

"キーマップ
nnoremap <silent><C-e> :NERDTreeToggle<CR>
 "オムニ補完
inoremap <C-@> <C-x><C-o>

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
NeoBundle 'kana/vim-smartinput'
NeoBundle "sudar/vim-arduino-syntax"

"Haskell
 "補完
NeoBundle 'eagletmt/neco-ghc'
let g:haskellmode_completion_ghc = 0
let g:necoghc_enable_detailed_browse = 1
autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

 "型チェック
NeoBundle 'Shougo/vimproc', {'build': {'linux': 'make -f make_unix.mak'}}
NeoBundle 'eagletmt/ghcmod-vim'
command T GhcModType
command TT GhcModTypeClear
hi ghcmodType ctermbg=blue
let g:ghcmod_type_highlight = 'ghcmodType'

 "ハイライト・インデント
NeoBundle 'travitch/hasksyn'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck
