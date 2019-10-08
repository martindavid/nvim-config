let g:grepper = {}
let g:grepper.tools = ["rg", "ag"]
let g:grepper.jump = 1
nnoremap <leader>g :Grepper -tool rg<cr>
nnoremap <leader>G :Grepper -tool rg -buffers<cr>

if dein#tap('jedi-vim')
  let g:jedi#completions_enabled = 0
  let g:jedi#auto_vim_configuration = 0
  let g:jedi#smart_auto_mappings = 0
  let g:jedi#show_call_signatures = 1
	let g:jedi#completions_command = ''
	let g:jedi#documentation_command = 'K'
	let g:jedi#goto_command = '<Leader>d'
	let g:jedi#goto_assignments_command = '<Leader>ga'
	let g:jedi#rename_command = '<Leader>r'
	let g:jedi#usages_command = '<Leader>n'
	let g:jedi#use_splits_not_buffers = 'right'
endif

if dein#tap('sbdchd/neoformat')
	augroup fmt
		autocmd!
		autocmd BufWritePre * undojoin | Neoformat
	augroup END

	let g:neoformat_python_autopep8 = {
		\ 'exe': 'black',
		\ 'args': ['-s 4', '-E'],
		\ 'replace': 1 " replace the file, instead of updating buffer (default: 0),
		\ 'stdin': 1, " send data to stdin of formatter (default: 0)
		\ 'env': ["DEBUG=1"], " prepend environment variables to formatter command
		\ 'valid_exit_codes': [0, 23],
		\ 'no_append': 1,
		\ }

	let g:neoformat_enabled_python = ['black']
endif

if dein#tap('nerdtree')
  let g:NERDTreeShowHidden=1
  map <leader>nn :NERDTreeToggle<CR>
  map <F2> :NERDTreeToggle<CR>
	map <Leader>ff :NERDTreeFind<CR>
endif

if dein#tap('vim-prettier')
	nmap <Leader>py :Prettier<CR>
	let g:prettier#autoformat = 0
	autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync
endif

if dein#tap('emmet-vim')
  let g:use_emmet_complete_tag = 0
	let g:user_emmet_install_global = 0
	let g:user_emmet_install_command = 0
	let g:user_emmet_mode = 'i'
	autocmd FileType html,css,jsx,javascript,javascript.jsx,htmldjango
		\ EmmetInstall
		\ | imap <buffer> <C-Return> <Plug>(emmet-expand-abbr)
endif

if dein#tap('vim-easymotion')
	nmap ss <Plug>(easymotion-s2)
	nmap sd <Plug>(easymotion-s)
	nmap sf <Plug>(easymotion-overwin-f)
	map  sh <Plug>(easymotion-linebackward)
	map  sl <Plug>(easymotion-lineforward)
	map  sj <Plug>(easymotion-j)
	map  sk <Plug>(easymotion-k)
	map  s/ <Plug>(easymotion-sn)
	omap s/ <Plug>(easymotion-tn)
	map  sn <Plug>(easymotion-next)
	map  sp <Plug>(easymotion-prev)
endif

let g:deoplete#enable_at_startup = 1
" Using jk and Tab to navigate around completion
inoremap <expr> <C-j> ((pumvisible())?("\<C-n>"):("C-j"))
inoremap <expr> <C-k> ((pumvisible())?("\<C-p>"):("C-k"))
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

if dein#tap('echodoc.vim')
	set cmdheight=3
	let g:echodoc#enable_at_startup = 1
	let g:echodoc#type = 'signature'
endif


let g:LanguageClient_serverCommands = {
	\ 'sh': ['bash-language-server', 'start'],
	\ 'javascript': ['typescript-language-server', '--stdio'],
	\ 'javascript.jsx': ['typescript-language-server', '--stdio'],
	\ 'typescript': ['typescript-language-server', '--stdio'],
	\ 'typescript.tsx': ['typescript-language-server', '--stdio'],
	\ 'python': ['~/.pyenv/shims/pyls'],
	\ 'ruby': ['~/.gem/ruby/2.6.2/bin/solargraph', 'stdio'],
	\ }

if dein#tap('LanguageClient-neovim')
	" Disable all realtime notifications
	let g:LanguageClient_diagnosticsSignsMax = 0
	let g:LanguageClient_diagnosticsEnable = 1
	let g:LanguageClient_useVirtualText = 0

" Language Server settings:

	nnoremap <Leader>lc   :call LanguageClient_contextMenu()<CR>

	function LC_maps()
		if has_key(g:LanguageClient_serverCommands, &filetype)
			nnoremap <buffer> <silent> K :call LanguageClient#textDocument_hover()<cr>
			nnoremap <buffer> <silent> gd :call LanguageClient#textDocument_definition()<CR>
			nnoremap <buffer> <silent> gf :call LanguageClient#textDocument_definition({'gotoCmd': 'vsplit'})<CR>
			nnoremap <buffer> <silent> gs :call LanguageClient#textDocument_documentSymbol()<CR>
			nnoremap <buffer> <silent> <F2> :call LanguageClient#textDocument_rename()<CR>
		endif
	endfunction

	autocmd FileType * call LC_maps()
endif

" Neomake
" ---------
if dein#tap('neomake')
	call neomake#configure#automake('w')
	let g:neomake_open_list = 0
	let g:neomake_verbose = 1
	let g:airline#extensions#neomake#enabled = 1

	if ! empty(g:python3_host_prog)
		let g:neomake_python_python_exe = g:python3_host_prog
	endif

	let g:neomake_python_enabled_makers = ['pylama']
	let g:neomake_jsx_enabled_makers = ['eslint']
	let g:neomake_javascript_enabled_makers = ['eslint']
	let g:neomake_javascript_eslint_exe = $PWD . '/node_modules/.bin/eslint'

	nmap <Leader><Space>o :lopen<CR>      " open location window
	nmap <Leader><Space>c :lclose<CR>     " close location window
	nmap <Leader><Space>, :ll<CR>         " go to current error/warning
	nmap <Leader><Space>n :lnext<CR>      " next error/warning
	nmap <Leader><Space>p :lprev<CR>      " previous error/warning
endif


let g:delimitMate_expand_cr = 1
let g:delimitMate_excluded_ft = 'html'

" Custom ignore for ctrl-p
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_use_caching = 0
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
