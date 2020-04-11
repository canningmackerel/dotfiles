" indent
:set autoindent " 改行時にインデントを入れる
:set expandtab " タブをスペースに変換
:set tabstop=4 " タブの幅
:set shiftwidth=4 " Vimが入れるインデントの幅

" cursor
:set number " 行番号
:set ruler " 下部に行と文字の位置を表示
:set virtualedit=onemore " ノーマルモードで行末の一つ先まで行けるようにする
:set whichwrap=h,l,<,> " カーソル移動で行末、行頭へ移れるようにする

" search
:set ignorecase " 検索時に大文字小文字を区別しない

" normal mode key bind
:nnoremap <F2> :noh<CR> " 検索ハイライトをF2で消す
:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l

" insert mode key bind
:inoremap '<Enter> ''<Left>
:inoremap "<Enter> ""<Left>
:inoremap (<Enter> ()<Left>
:inoremap {<Enter> {}<Left><CR><Up><End><Esc>o


" screen
:set splitright " 画面を垂直分割時に右に開く
:set splitbelow " 画面を水平分割時に下に開く

" complement
:set wildmode=list:longest " コマンド入力時の補完をbashのように途中までの補完とする

" delete key
set backspace=indent,eol,start

" jedi-vim conf
autocmd FileType python setlocal completeopt-=preview " do not show document window
set completeopt+=longest
let g:jedi#popup_on_dot = 0 " do not autocomplete with dot key
let g:jedi#popup_select_first = 0 " do not select suggest list

" vim-flake8 conf
autocmd BufWritePost *.py call flake8#Flake8() " check every time
let g:flake8_show_in_gutter=1 " show err on gutter
let g:flake8_show_quickfix=0 " do not show quickfix window

" NERDTree conf
let NERDTreeShowHidden=1 " show hidden file 
:noremap <C-n> :NERDTree<CR>

" when vim make install
"set pythonthreedll=/usr/local/Frameworks/Python.framework/Versions/3.7/Python
"set pythonthreehome=/usr/local/Frameworks/Python.framework/Versions/3.7

" vim-plug
call plug#begin()
Plug 'tomasr/molokai'
Plug 'davidhalter/jedi-vim'
Plug 'nvie/vim-flake8'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'
call plug#end()

