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
"set encoding=utf-8
"set fileencodings=iso-2022-jp,cp932,sjis,euc-jp,utf-8
"set fileencodings=uft-8,sjis
"set fileformats=unix,dos,mac

"キーマップ
nnoremap <silent><C-e> :NERDTreeToggle<CR>
 "オムニ補完
inoremap <C-@> <C-x><C-o>

"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundles/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.vim/bundles')
  call dein#begin('~/.vim/bundles')

  " Let dein manage dein
  " Required:
  call dein#add('~/.vim/bundles/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

  call dein#add('plasticboy/vim-markdown')
  call dein#add('kannokanno/previm')
  call dein#add('tyru/open-browser.vim')
  call dein#add('scrooloose/nerdtree')
  call dein#add('grep.vim')
  call dein#add('davidhalter/jedi-vim')
  "call dein#add('kana/vim-smartinput')
  call dein#add("sudar/vim-arduino-syntax")

"Haskell
 "補完
  call dein#add('eagletmt/neco-ghc')
  let g:haskellmode_completion_ghc = 0
  let g:necoghc_enable_detailed_browse = 1
  autocmd FileType haskell setlocal omnifunc=necoghc#omnifunc

 "型チェック
  call dein#add('Shougo/vimproc', {'build': {'linux': 'make -f make_unix.mak'}})
  call dein#add('eagletmt/ghcmod-vim')
  command T GhcModType
  command TT GhcModTypeClear
  hi ghcmodType ctermbg=blue
  let g:ghcmod_type_highlight = 'ghcmodType'

 "ハイライト・インデント
  call dein#add('travitch/hasksyn')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

