syntax on
colorscheme murphy
set nu
set showmatch
set hlsearch
set incsearch
set number
set ruler
set visualbell
set expandtab
set tabstop=2
set wrap
set whichwrap=b,s,h,l,<,>,[,] 
set scrolljump=5
set scrolloff=3     


map ; :
imap ii <Esc>
nnoremap j gj
nnoremap k gk


set listchars=tab:>.,trail:.,extends:#,nbsp:. 

cmap w!! w !sudo tee % >/dev/null