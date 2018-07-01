execute pathogen#infect()
filetype on
filetype plugin on
filetype indent on

autocmd filetype make setlocal noexpandtab
" to get filetype to recognize markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown

syntax on

set hidden
set showmode
set nu
set ts=4 sts=4 sw=4 expandtab
set scrolloff=8
set wrapscan

let mapleader = ","

" toggle spellcheck
nmap <silent> <leader>s :set spell!<CR>
:nnoremap <leader>ev :vsplit $MYVIMRC<cr>
:nnoremap <leader>sv :source $MYVIMRC<cr>

imap <leader>e <C-y>,

nnoremap <Leader>l :ls<CR>
nnoremap <Leader>b :bp<CR>
nnoremap <Leader>f :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>

" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

inoremap jj <esc>
