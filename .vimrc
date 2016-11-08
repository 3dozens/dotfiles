syntax enable

set number
set ruler
set list
set listchars=tab:>-,trail:-,nbsp:%,extends:>,precedes:<,eol:↲
set incsearch
set hlsearch
set nowrap
set showmatch
set whichwrap=h,l
set nowrapscan
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

inoremap <C-j> <ESC>
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>

colorscheme desert

nnoremap <ESC><ESC> :nohlsearch<CR>

" Force saving files that require root permission 
cnoremap w!! w !sudo tee > /dev/null %
" auto comment off
augroup auto_comment_off
    autocmd!
    autocmd BufEnter * setlocal formatoptions-=r
    autocmd BufEnter * setlocal formatoptions-=o
augroup END
