
" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

imap ii <Esc>
nnoremap ; :

nmap <silent> ./ :nohlsearch<CR>
set guioptions=aAce " the single greatest snippet for the MacVim GUI, tip from http://blog.danielfischer.com/2010/11/19/a-starting-guide-to-vim-from-textmate/
set showtabline=2

set hidden
set nobackup
set tabstop=4
set number
set smarttab
set hlsearch
set incsearch
set backspace=eol,start,indent
set cursorline
syntax on

set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set title                " change the terminal's title

colorscheme torte
colors torte






" Easy window navigation using Ctrl HJKL
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

cmap w!! w !sudo tee % >/dev/null

" delete line (it makes more sense to me
map dl D


" I keep my .txt and .md notes in ~/Dropbox/Notes
" This maps <Leader>] (I leave my leader as \ ) to a notes ready environment. Or something

nmap <leader>] !cd /Users/tm/Dropox/Notes/ && :e


" test add of minibufexpl.vim
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1


" When saving a file, remove all trailing whitespace before saving.
autocmd BufWritePre * :%s/\s\+$//e
