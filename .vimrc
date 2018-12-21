
call plug#begin('~/.vim/plugged')

"Plug 'flazz/vim-colorschemes'
"Plug 'vim-syntastic/syntastic'
"Plug 'artur-shaik/vim-javacomplete2'
"Plug 'pangloss/vim-javascript' 
Plug 'scrooloose/nerdtree'
Plug 'https://github.com/tomtom/tcomment_vim'
Plug 'chriskempson/base16-vim'
Plug 'mattn/emmet-vim'
Plug 'Valloric/YouCompleteMe'
Plug 'w0rp/ale'

call plug#end()

" colorscheme molokai
"Sourcing .vimrc_background where base16 clorscheme is set by the base16
"shell script

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
    source ~/.vimrc_background
endif

"Basic config
set relativenumber
set number
set tabstop=4
set shiftwidth=4
set textwidth=80
set colorcolumn=+1
highlight ColorColumn ctermbg=DarkRed
"Make the background transparent
hi Normal guibg=NONE ctermbg=NONE

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
