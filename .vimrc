
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/tomtom/tcomment_vim'
Plug 'artur-shaik/vim-javacomplete2'

call plug#end()

colorscheme molokai

"Fzf configuration
set rtp+=~/.fzf
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

"Basic config
set relativenumber
set tabstop=4
set shiftwidth=4
set textwidth=80
set colorcolumn=+1
highlight ColorColumn ctermbg=DarkRed

"KeyMapings
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
map <c-_><c-_>   :: :TComment
map <c-f><C-f> :Files<CR>
map ;; :NERDTree<CR>

"Set NERDTree to start automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
