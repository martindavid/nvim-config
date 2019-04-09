

if dein#tap('denite.nvim')
	nnoremap <silent><LocalLeader>r :<C-u>Denite -resume -refresh<CR>
	nnoremap <silent><LocalLeader>f :<C-u>Denite file/rec<CR>
	nnoremap <silent><LocalLeader>b :<C-u>Denite buffer file/old -default-action=switch<CR>
	nnoremap <silent><LocalLeader>d :<C-u>Denite directory_rec -default-action=cd<CR>
	nnoremap <silent><LocalLeader>v :<C-u>Denite register -buffer-name=register<CR>
	xnoremap <silent><LocalLeader>v :<C-u>Denite register -buffer-name=register -default-action=replace<CR>
	nnoremap <silent><LocalLeader>l :<C-u>Denite location_list -buffer-name=list<CR>
	nnoremap <silent><LocalLeader>q :<C-u>Denite quickfix -buffer-name=list<CR>
	nnoremap <silent><LocalLeader>n :<C-u>Denite dein<CR>
	nnoremap <silent><LocalLeader>g :<C-u>Denite grep<CR>
	nnoremap <silent><LocalLeader>j :<C-u>Denite jump change file/point<CR>
	nnoremap <silent><LocalLeader>u :<C-u>Denite junkfile:new junkfile<CR>
	nnoremap <silent><LocalLeader>o :<C-u>Denite outline<CR>
	nnoremap <silent><LocalLeader>s :<C-u>Denite session -buffer-name=list<CR>
	nnoremap <silent><expr> <LocalLeader>t &filetype == 'help' ? "g\<C-]>" :
		\ ":\<C-u>DeniteCursorWord -buffer-name=tag
		\  tag:include\<CR>"
	nnoremap <silent><expr> <LocalLeader>p  &filetype == 'help' ?
		\ ":\<C-u>pop\<CR>" : ":\<C-u>Denite -mode=normal jump\<CR>"
	nnoremap <silent><LocalLeader>h :<C-u>Denite help<CR>
	nnoremap <silent><LocalLeader>m :<C-u>Denite mpc -buffer-name=mpc<CR>
	nnoremap <silent><LocalLeader>/ :<C-u>Denite line<CR>
	nnoremap <silent><LocalLeader>* :<C-u>DeniteCursorWord line<CR>
	nnoremap <silent><LocalLeader>z :<C-u>Denite z<CR>
	nnoremap <silent><LocalLeader>; :<C-u>Denite command command_history<CR>

	" Open Denite with word under cursor or selection
	nnoremap <silent> <Leader>gf :DeniteCursorWord file/rec<CR>
	nnoremap <silent> <Leader>gg :DeniteCursorWord grep<CR>
	vnoremap <silent> <Leader>gg
		\ :<C-u>call <SID>get_selection('/')<CR>
		\ :execute 'Denite grep:::'.@/<CR><CR>

	function! s:get_selection(cmdtype)
		let temp = @s
		normal! gv"sy
		let @/ = substitute(escape(@s, '\'.a:cmdtype), '\n', '\\n', 'g')
		let @s = temp
	endfunction "}}}
endif

if dein#tap('jedi-vim')
	let g:jedi#completions_command = ''
	let g:jedi#documentation_command = 'K'
	let g:jedi#goto_command = '<Leader>d'
	let g:jedi#goto_assignments_command = '<Leader>g'
	let g:jedi#rename_command = '<Leader>r'
	let g:jedi#usages_command = '<Leader>n'
	let g:jedi#use_splits_not_buffers = 'right'
endif

if dein#tap('tern_for_vim')
	autocmd FileType javascript,jsx,javascript.jsx
		\  nnoremap <silent><buffer> K          :<C-u>TernDoc<CR>
		\| nnoremap <silent><buffer> <C-]>      :<C-u>TernDefSplit<CR>
		\| nnoremap <silent><buffer> <leader>g  :<C-u>TernType<CR>
		\| nnoremap <silent><buffer> <leader>n  :<C-u>TernRefs<CR>
		\| nnoremap <silent><buffer> <leader>r  :<C-u>TernRename<CR>
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


let g:lint_filetypes = ['yaml.ansible', 'python', 'php', 'ruby', 'vim', 'go', 'sh', 'javascript', 'jsx', 'javascript.jsx', 'json', 'css', 'markdown', 'html', 'yaml']
autocmd BufWritePost *
	\ if index(g:lint_filetypes, &filetype) > -1 && empty(&buftype)
	\|   Neomake
	\| elseif &filetype =~ 'html'
	\|   Neomake tidy
	\| endif


let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#smart_auto_mappings = 0
let g:jedi#show_call_signatures = 1

let g:gutentags_generate_on_write = 1
let g:gutentags_generate_on_missing = 0
let g:gutentags_generate_on_new = 0
let g:gutentags_ctags_exclude_wildignore = 1
let g:gutentags_ctags_exclude = ['*/wp-admin', '*/wp-content', '*/wp-includes', '*/application/vendor', '*/vendor/ckeditor', '*/media/vendor']


let g:tern#command = ['tern']
let g:tern#arguments = ['--persistent']
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = 0


" Neomake
" ---------
call neomake#configure#automake('w')
let g:neomake_open_list = 0
let g:neomake_verbose = 1
let g:airline#extensions#neomake#enabled = 1

if ! empty(g:python3_host_prog)
	let g:neomake_python_python_exe = g:python3_host_prog
endif

let g:neomake_python_enabled_makers = ['pylama']

" JAVASCRIPT / JSX
let g:neomake_jsx_enabled_makers = ['eslint']
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_javascript_eslint_exe = $PWD . '/node_modules/.bin/eslint'


" neomake
nmap <Leader><Space>o :lopen<CR>      " open location window
nmap <Leader><Space>c :lclose<CR>     " close location window
nmap <Leader><Space>, :ll<CR>         " go to current error/warning
nmap <Leader><Space>n :lnext<CR>      " next error/warning
nmap <Leader><Space>p :lprev<CR>      " previous error/warning


autocmd FileType javascript setlocal omnifunc=tern#Complete

let g:delimitMate_expand_cr = 1
let g:delimitMate_excluded_ft = 'html'


" Custom ignore for ctrl-p
let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist)|(\.(swp|ico|git|svn))$'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:javascript_plugin_jsdoc = 1 
let g:javascript_plugin_flow = 1
highlight! link jsFutureKeys PreProc