syntax enable

set number
set ruler
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<
set incsearch
set hlsearch
set wrap
set showmatch
set whichwrap=h,l
set wrapscan
set ignorecase
set smartcase
set hidden
set history=2000
set smartindent
set expandtab
set shiftwidth=4
set tabstop=4
set helplang=en
set clipboard=unnamed,autoselect
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
set whichwrap=b,s,h,l,<,>,[,],~

inoremap <C-j> <ESC>
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap [ []<Left>
inoremap ' ''<Left>
inoremap " ""<Left>

colorscheme desert

nnoremap <ESC><ESC> :nohlsearch<CR>
nnoremap Y y$

cnoremap Q q!
cnoremap vs<Enter> vs<Enter><C-w>l
cnoremap sp<Enter> sp<Enter><C-w>j
cnoremap Ve<Enter> Ve<Enter><C-w>L
cnoremap S<Enter>  S<Enter><C-w>J
cnoremap tn tabnew
cnoremap td tabclose
cnoremap w!! w !sudo tee > /dev/null %

let g:loaded_logipat = 1

" auto comment off
augroup auto_comment_off
    autocmd!
    autocmd BufEnter * setlocal formatoptions-=r
    autocmd BufEnter * setlocal formatoptions-=o
augroup END
