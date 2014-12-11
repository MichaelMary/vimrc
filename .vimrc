colorscheme molokai
filetype on
set ambiwidth=double
set autoindent
set cindent
set cursorline
hi CursorLine cterm=bold ctermbg=LightBlue
set expandtab
set history=1000
set ignorecase
set incsearch
set hlsearch
set nobackup
set nocompatible
set number
set ruler
set shiftwidth=4
set showmatch
set smartindent
set tabstop=4
"show tab as >---
set listchars=tab:>-,trail:-
set list
syntax on

set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set fileformats=unix
"set encoding=prc
set encoding=utf-8

"install pathogen
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
"Helptags
"powerline config
"powerline{
"set guifont=PowerlineSymbols for Powerline
set ls=2
set t_Co=256
let g:Powerline_symbols = 'fancy'
"}

"ctags
"set tags=~/data/svn-code/tags

"dos format
set fileformats=unix,dos

"---------------------------------Taglist.vim-------------------->>
let Tlist_Show_One_File=1 
let Tlist_Exit_OnlyWindow=1 
let Tlist_Use_Right_Window=1
let Tlist_WinWidth=50
noremap <F3> :Tlist<cr>

"---------------------------------cscope-------------------->>
set cscopequickfix=s-,c-,d-,i-,t-,e-
"s: Find this C symbol
"g: Find this definition
"d: Find functions called by this function
"c: Find functions calling this function
"t: Find this text string
"e: Find this egrep pattern
"f: Find this file
"i: Find files #including this file
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

"---------------------------------grep.vim-------------------->>
nnoremap <silent> <F4> :Rgrep<CR>

"---------------------------------quickfix-------------------->>
nnoremap <silent> <F5> :copen<CR>
nnoremap <silent> <F6> :cp<CR>
nnoremap <silent> <F7> :cn<CR>
nnoremap <silent> <F8> :cclose<CR>

"---------------------------------NERD_tree.vim-------------------->>
"设置快捷键"
noremap <F2> :NERDTreeToggle<cr>

"禁用所有与NERD_tree有关的命令"
"let loaded_nerd_tree=1
"不显示指定的类型的文件"
"let NERDTreeIgnore=['/.vim$','/~$']
let NERDTreeIgnore=['\.vim$', '\.*.xls$', '\.*.doc$', '\~$']
"不显示隐藏文件(好像只在linux环境中有效)"
let NERDTreeShowHidden=0
"排序"
"let NERDTreeSortOrder=['//$','/.cpp$','/.c$', '/.h$', '/.py$', '/.lua$', '*'] 
"不分大小写排序"
let NERDTreeCaseSensitiveSort=0
"设置窗口尺寸"
let NERDTreeWinSize=50
"是否显示行号"
"let NERDTreeShowLineNumbers=1
"是否显示书签"
"let NERDTreeShowBookmarks=1 
"打开文件后, 关闭NERDTrre窗口"
let NERDTreeQuitOnOpen=1
"高亮NERDTrre窗口的当前行"
let NERDTreeHighlightCursorline=1

"---------------------------------BufExplorer.vim------------------>>
noremap zz :BufExplorer<CR>

"---------------------------------other------------------>>
"Smart way to move btw. window
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"---------------------------------leader-------------------->>
let mapleader = ","
"map <silent> <leader>tl :Tlist<cr>
"map <silent> <leader>fe :WMToggle<cr>
map <silent> <leader>ee :e $MYVIMRC<cr>
map <silent> <leader>er :so $MYVIMRC<cr>
map <silent> <leader>ea :so ./prj.vimrc<cr>
map <silent> <leader>d :g/^\(.*\)$\n\1$/d<cr>

