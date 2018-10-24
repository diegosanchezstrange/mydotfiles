
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'flazz/vim-colorschemes'
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/tomtom/tcomment_vim'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'chriskempson/base16-vim'

call plug#end()

"colorscheme molokai
"Sourcing .vimrc_background where base16 clorscheme is set by the base16
"shell script
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
    source ~/.vimrc_background
endif

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
noremap <Left> <NOP>
map <Up><Up> :resize +10<CR>
map <DOWN><DOWN> :resize -10<CR>
map <DOWN> :split<CR>
map <Right> :vsplit<CR>
map <c-_><c-_>   :: :TComment
map <c-f><C-f> :Files<CR>
map ;; :NERDTree<CR>

"Set NERDTree to start automatically
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
