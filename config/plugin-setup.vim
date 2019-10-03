if dein#tap('denite.nvim')
  nnoremap <silent><LocalLeader>r :<C-u>Denite -resume -refresh -no-start-filter<CR>
	nnoremap <silent><LocalLeader>f :<C-u>Denite file/rec<CR>
	nnoremap <silent><LocalLeader>b :<C-u>Denite buffer file/old -default-action=switch<CR>
	nnoremap <silent><LocalLeader>d :<C-u>Denite directory_rec -default-action=cd<CR>
	nnoremap <silent><LocalLeader>v :<C-u>Denite neoyank -buffer-name=register<CR>
	xnoremap <silent><LocalLeader>v :<C-u>Denite neoyank -buffer-name=register -default-action=replace<CR>
	nnoremap <silent><LocalLeader>l :<C-u>Denite location_list -buffer-name=list<CR>
	nnoremap <silent><LocalLeader>q :<C-u>Denite quickfix -buffer-name=list<CR>
	nnoremap <silent><LocalLeader>n :<C-u>Denite dein<CR>
	nnoremap <silent><LocalLeader>g :<C-u>Denite grep -buffer-name=search<CR>
	nnoremap <silent><LocalLeader>j :<C-u>Denite jump change file/point -buffer-name=jump<CR>
	nnoremap <silent><LocalLeader>u :<C-u>Denite junkfile:new junkfile<CR>
	nnoremap <silent><LocalLeader>o :<C-u>Denite outline<CR>
	nnoremap <silent><LocalLeader>s :<C-u>Denite session -buffer-name=list<CR>
	nnoremap <silent><LocalLeader>t :<C-u>Denite -buffer-name=tag tag:include<CR>
	nnoremap <silent><LocalLeader>p :<C-u>Denite jump -buffer-name=jump<CR>
	nnoremap <silent><LocalLeader>h :<C-u>Denite help<CR>
	nnoremap <silent><LocalLeader>m :<C-u>Denite file/rec -buffer-name=memo -path=~/docs/books<CR>
	nnoremap <silent><LocalLeader>z :<C-u>Denite z<CR>
	nnoremap <silent><LocalLeader>/ :<C-u>Denite line -start-filter<CR>
	nnoremap <silent><LocalLeader>* :<C-u>DeniteCursorWord line<CR>
	nnoremap <silent><LocalLeader>; :<C-u>Denite command command_history<CR>


	" Open Denite with word under cursor or selection
	"nnoremap <silent> <Leader>gt :DeniteCursorWord tag:include -buffer-name=tag -immediately<CR>
	"nnoremap <silent> <Leader>gf :DeniteCursorWord file/rec<CR>
	"nnoremap <silent> <Leader>gg :DeniteCursorWord grep -buffer-name=search<CR>
	vnoremap <silent> <Leader>gg
		\ :<C-u>call <SID>get_selection('/')<CR>
		\ :execute 'Denite -buffer-name=search grep:::'.@/<CR><CR>

	function! s:get_selection(cmdtype)
		let temp = @s
		normal! gv"sy
		let @/ = substitute(escape(@s, '\'.a:cmdtype), '\n', '\\n', 'g')
		let @s = temp
	endfunction "}}}
endif


let g:grepper = {}
let g:grepper.tools = ["rg", "ag"]
let g:grepper.jump = 1
nnoremap <leader>g :Grepper -tool rg<cr>
nnoremap <leader>G :Grepper -tool rg -buffers<cr>
" map gf :Grepper -cword -noprompt<CR>

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
" Moving in the completion window using C-j and C-n
inoremap <expr> <C-j> ((pumvisible())?("\<C-n>"):("C-j"))
inoremap <expr> <C-k> ((pumvisible())?("\<C-p>"):("C-k"))

if dein#tap('echodoc.vim')
	set cmdheight=3
	let g:echodoc#enable_at_startup = 1
	let g:echodoc#type = 'signature'
endif

if dein#tap('LanguageClient-neovim')
	" Disable all realtime notifications
	let g:LanguageClient_diagnosticsSignsMax = 0
	let g:LanguageClient_diagnosticsEnable = 1
	let g:LanguageClient_useVirtualText = 0

" Language Server settings:
	let g:LanguageClient_serverCommands = {
		\ 'sh': ['bash-language-server', 'start'],
		\ 'javascript': ['typescript-language-server', '--stdio'],
		\ 'javascript.jsx': ['typescript-language-server', '--stdio'],
		\ 'typescript': ['typescript-language-server', '--stdio'],
		\ 'typescript.tsx': ['typescript-language-server', '--stdio'],
		\ 'python': ['~/.pyenv/shims/pyls'],
		\ 'ruby': ['~/.asdf/shims/solargraph', 'stdio'],
		\ }

	nnoremap <Leader>lc   :call LanguageClient_contextMenu()<CR>

	function LC_maps()
		if has_key(g:LanguageClient_serverCommands, &filetype)
			nnoremap <buffer> <silent> K :call LanguageClient#textDocument_hover()<cr>
			nnoremap <buffer> <silent> gd :call LanguageClient#textDocument_definition()<CR>
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


