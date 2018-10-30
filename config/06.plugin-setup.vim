if dein#tap('jedi-vim')
	let g:jedi#completions_command = ''
	let g:jedi#documentation_command = 'K'
	let g:jedi#goto_command = '<C-]>'
	let g:jedi#goto_assignments_command = '<leader>g'
	let g:jedi#rename_command = '<Leader>r'
	let g:jedi#usages_command = '<Leader>n'
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
	autocmd FileType html,css,jsx,javascript,javascript.jsx
		\ EmmetInstall
		\ | imap <buffer> <C-Return> <Plug>(emmet-expand-abbr)
endif

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_w = 1
let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_javascript_eslint_exe='$(npm bin)/eslint'


let g:use_emmet_complete_tag = 0
let g:user_emmet_install_global = 0
let g:user_emmet_install_command = 0
let g:user_emmet_mode = 'i'


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

let g:neomake_python_enabled_makers = ['pep8', 'pylint', 'flake8']

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


" Deoplete
source $VIMPATH/plugins/deoplete.vim
call deoplete#enable()


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


" Neosnippet
let g:neosnippet#data_directory = $VARPATH.'/snippets'
let g:neosnippet#enable_snipmate_compatibility = 1
let g:neosnippet#enable_completed_snippet = 1
let g:neosnippet#expand_word_boundary = 1
autocmd CompleteDone * call neosnippet#complete_done()
autocmd InsertLeave * NeoSnippetClearMarkers