"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


" NERDTree

let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree"
let NERDTreeShowHidden=1
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
map <F2> :NERDTreeToggle<CR>

" I like to :quit with 'q', shrug.
nnoremap <silent> q :<C-u>:quit<CR>
autocmd FileType man nnoremap <silent><buffer> q :<C-u>:quit<CR>


" Buffers
nnoremap <leader>b :ls<CR>:b<Space>
nnoremap gb :ls<CR>:b<Space>

" Tabs
nnoremap <silent> g0 :<C-u>tabfirst<CR>
nnoremap <silent> g$ :<C-u>tablast<CR>
nnoremap <silent> gr :<C-u>tabprevious<CR>
nnoremap <silent> <A-j> :<C-U>tabnext<CR>
nnoremap <silent> <A-k> :<C-U>tabprevious<CR>
nnoremap <silent> <C-Tab> :<C-U>tabnext<CR>
nnoremap <silent> <C-S-Tab> :<C-U>tabprevious<CR>
" Uses g:lasttab set on TabLeave in MyAutoCmd
let g:lasttab = 1
nmap <silent> \\ :execute 'tabn '.g:lasttab<CR>
