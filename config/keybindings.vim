" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Disable Arrow
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

inoremap <Up> <nop>
inoremap <Down> <nop>
inoremap <Right> <nop>
inoremap <Left> <nop>

vnoremap <Up> <nop>
vnoremap <Down> <nop>
vnoremap <Right> <nop>
vnoremap <Left> <nop>

" I like to :quit with 'q', shrug.
nnoremap <silent> q :<C-u>:quit<CR>
autocmd FileType man nnoremap <silent><buffer> q :<C-u>:quit<CR>
imap jk <Esc>


" Buffers
nnoremap gb :ls<CR>:b<Space>
nnoremap <leader>b :b <C-d>
nnoremap <leader>bv :vert sb <C-d>
" switches to the last buffer
noremap <leader>q :b#<cr>

" Search with grep
nnoremap <leader>/ :Rg<space>

nnoremap <C-t><C-j> :tabr<cr>
nnoremap <C-t><C-k> :tabl<cr>
nnoremap <C-t><C-h> :tabp<cr>
nnoremap <C-t><C-l> :tabn<cr>

nmap <silent> <leader>/ :nohlsearch<CR>
