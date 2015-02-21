"---------------------------
" Start Neobundle Settings.
"---------------------------
" bundleで管理するディレクトリを指定
set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
" neobundle自体をneobundleで管理
NeoBundleFetch 'Shougo/neobundle.vim'
" ファイルオープンを便利に
NeoBundle 'Shougo/unite.vim'
" Unite.vimで最近使ったファイルを表示できるようにする
NeoBundle 'Shougo/neomru.vim'
" http://blog.remora.cx/2010/12/vim-ref-with-unite.html

""""""""""""""""""""""""""""""
" Unite.vimの設定
""""""""""""""""""""""""""""""
" 入力モードで開始する
let g:unite_enable_start_insert=1
" バッファ一覧
noremap <C-P> :Unite buffer<CR>
" ファイル一覧
noremap <C-N> :Unite -buffer-name=file file<CR>
" 最近使ったファイルの一覧
noremap <C-Z> :Unite file_mru<CR>
" sourcesを「今開いているファイルのディレクトリ」とする
noremap :uff :<C-u>UniteWithBufferDir file -buffer-name=file<CR>
" ウィンドウを分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
au FileType unite inoremap <silent> <buffer> <expr> <C-J> unite#do_action('split')
" ウィンドウを縦に分割して開く
au FileType unite nnoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
au FileType unite inoremap <silent> <buffer> <expr> <C-K> unite#do_action('vsplit')
" ESCキーを2回押すと終了する
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>
""""""""""""""""""""""""""""""
"　入力補完をしてくれる
""""""""""""""""""""""""""""""
NeoBundle "Shougo/neocomplcache.vim"
NeoBundle "Shougo/neosnippet.vim"
let g:neocomplcache_enable_at_startup = 1
inoremap <expr> <TAB> pumvisible() ? "\<Down>" : "\<Tab>"
inoremap <expr> <S-TAB> pumvisible() ? "\<Up>" : "\<S-Tab>"
inoremap <expr> <Down> pumvisible() ? neocomplcache#smart_close_popup()."\<Down>" : "\<Down>"
inoremap <expr> <Up> pumvisible() ? neocomplcache#smart_close_popup()."\<Up>" : "\<Up>"

" ファイルをtree表示してくれる
NeoBundle 'scrooloose/nerdtree'
noremap <C-T> :NERDTree<CR>

" コメントON/OFFを手軽に実行
NeoBundle 'tomtom/tcomment_vim'
" 今後このあたりに追加のプラグインをどんどん書いて行きます！！"
 
call neobundle#end()
 
" Required:
filetype plugin on
 
" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck

"-------------------------
" End Neobundle Settings.
"-------------------------
:set number
:syntax on
:set noautoindent
:set nosmartindent
:set expandtab
:set tabstop=2
:set shiftwidth=2
