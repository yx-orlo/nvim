set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8
let &t_ut=''
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
"set list
set scrolloff=5
set tw=0
set indentexpr=
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
let &t_SI="\<Esc>]50;cursorShape=1\x7"
let &t_SR="\<Esc>]50;cursorShape=2\x7"
let &t_EI="\<Esc>]50;cursorShape=0\x7"
set laststatus=2
set autochdir
let mapleader=" "
syntax on "高亮
set number "设置行号
set autoindent "设置自动缩进
set relativenumber "相对行号
set cursorline "游标线
set wrap 
set wildmenu "命令时tab提示命名
set showcmd "显示一些指令
set hlsearch "高亮查找的结果
set incsearch "边输入边高亮
"加载vim后立即执行的命令
exec "nohlsearch" 
noremap <LEADER><CR> :nohlsearch<CR>
set ignorecase "忽略大小写
set smartcase
noremap H 10h
noremap L 10l
noremap J 10j
noremap K 10k
map s <nop>
map S :w<CR>
map Q :q<CR>
map R :source ~/.config/nvim/init.vim<CR>
map sl :set splitright<CR>:vsplit<CR>
map sh :set nosplitright<CR>:vsplit<CR>
map sj :set splitbelow<CR>:split<CR>
map sk :set nosplitbelow<CR>:split<CR>

map tn :tabe<CR>
map th :-tabnext<CR>
map tl :+tabnext<CR>

map <LEADER>l <C-w>l
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

"vim插件安装--------------------------------------------------------------	
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
" File navigation
Plug 'scrooloose/nerdtree',{ 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
"Auto Complete
Plug 'Valloric/YouCompleteMe'
call plug#end()
color snazzy
let g:SnazzyTransparent = 1

" ===
" === NERDTree
" ===
map ff :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"


" ==
" == NERDTree-git
" ==
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }


" ===
" === You Complete ME
" ===
nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap g/ :YcmCompleter GetDoc<CR>
nnoremap gt :YcmCompleter GetType<CR>
nnoremap gr :YcmCompleter GoToReferences<CR>
let g:ycm_autoclose_preview_window_after_completion=0
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_use_clangd = 0
let g:ycm_python_interpreter_path = "/bin/python3"
let g:ycm_python_binary_path = "/bin/python3"

