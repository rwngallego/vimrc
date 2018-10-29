" Some Linux distributions set filetype in /etc/vimrc.
" Clear filetype flags before changing runtimepath to force Vim to reload them.
execute pathogen#infect()
syntax on
filetype indent on

set number
:highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

"Delete instead of cut in visual mode when pressing d"
nnoremap d "_d
vnoremap d "_d

"find in current directory"
set path=$PWD/**

"faster scroll"
noremap <C-j> 4j
noremap <C-k> 4k

au FocusGained,BufEnter * :silent! !
au FocusLost,WInLeave * :wa

"Toggle NerdTree"
noremap <S-m> :NERDTreeToggle<CR>

"close buffer without closing the split"
noremap <C-c> :bp\|bd #<CR>

"HTML syntax highlight"
au BufReadPost *.html set syntax=html

"Highlight search"
set hlsearch

"vim-gitgutter refresh time"
set updatetime=1000

"Ignore directories from ctrlp"
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|_build|deps)|(\.(swp|ico|git|svn))$'
let g:ctrlp_show_hidden = 1

"Case insensitive by default"
set ic

"Force vim features"
set nocompatible
