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

" key bind
:nnoremap <F2> :noh<CR> |"  検索ハイライトをF2で消す
:nnoremap <C-h> <C-w>h
:nnoremap <C-j> <C-w>j
:nnoremap <C-k> <C-w>k
:nnoremap <C-l> <C-w>l
:inoremap "<Enter> ""<Left> |" 「" + Enter」で自動補完
:inoremap {<Enter> {}<Left><CR><Up><End><Esc>o<TAB> |" 「{ + Enter」で自動補完
:inoremap (<Enter> ()<Left><CR><Up><End><Esc>o<TAB> |" 「( + Enter」で自動補完

" screen
:set splitright " 画面を垂直分割時に右に開く
:set splitbelow " 画面を水平分割時に下に開く

" complement
:set wildmode=list:longest " コマンド入力時の補完をbashのように途中までの補完とする
