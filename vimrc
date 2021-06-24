"--------------
" Plugins
"--------------
call plug#begin('~/.vim/plugged')
 "development tool
  Plug 'rickhowe/diffchar.vim' 
  Plug 'joe-skb7/cscope-maps'

  " session manager
  Plug 'xolox/vim-misc'
  Plug 'xolox/vim-session'

  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'scrooloose/nerdtree'
  Plug 'ctrlpvim/ctrlp.vim'
 "Plug 'mattn/emmet-vim'
 "Plug 'tpope/vim-surround'
 "Plug 'tpope/vim-repeat'
  Plug 'terryma/vim-multiple-cursors'

  " for general purpose development
  Plug 'tomtom/tcomment_vim'
  Plug 'MarcWeber/vim-addon-mw-utils'
  Plug 'tomtom/tlib_vim'
  Plug 'garbas/vim-snipmate'
  Plug 'honza/vim-snippets'
  Plug 'majutsushi/tagbar'
  Plug 'mileszs/ack.vim'
  Plug 'airblade/vim-gitgutter'
  Plug 'mbbill/echofunc'
  Plug 'vim-scripts/OmniCppComplete'
  Plug 'Lokaltog/powerline'

  " for ruby/rails development
 "Plug 'vim-ruby/vim-ruby'
 "Plug 'tpope/vim-rails'
 "Plug 'thoughtbot/vim-rspec'

  " for vue.js development
 "Plug 'leafOfTree/vim-vue-plugin'
call plug#end()

"--------------
" Settings
"--------------
set nocompatible
set clipboard=unnamed
set noswapfile
set hidden
set nobomb            " no BOM(Byte Order Mark)
"set mouse=a

"--------------
" Filetype and Encoding
"--------------
filetype on
filetype indent on
filetype plugin on

" file encoding
set encoding=utf-8
scriptencoding utf-8

"--------------
" key mapping
"--------------
let mapleader = ","
" copy (write) highlighted text to .vimbuffer
vmap <leader>c y:new ~/.vimbuffer<CR>VGp:x<CR> \| :!cat ~/.vimbuffer \| clip.exe <CR><CR>
" paste from buffer
map <leader>v :r ~/.vimbuffer<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
"-------------
" Auto command
"-------------
autocmd BufWritePre *.cpp,*.h,*.cc,*.py,*.pl %s/\s\+$//e   "remove all tailing whitespaces

autocmd VimLeave * NERDTreeClose
" autocmd VimLeave * mksession!
" autocmd VimEnter * source ~/.Session.vim
"-------------
" code base
"-------------
set tags=$PROJ1/tags,$PROJ2/tags,$PROJ3/tags
cs add $PROJ1/cscope.out $PROJ1
cs add $PROJ2/cscope.out $PROJ2
cs add $PROJ3/cscope.out $PROJ3
set cscopequickfix=s-,c-,d-,i-,t-,e-,a-


