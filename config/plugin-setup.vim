nnoremap <leader>g :Grepper -tool rg<cr>
nnoremap <leader>G :Grepper -tool rg -buffers<cr>
let g:grepper = { 'next_tool': '<leader>g' }
let g:grepper.tools = ["rg", "ag"]
let g:grepper.jump = 1

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

if dein#tap('nerdcommenter')
	" Add spaces after comment delimiters by default
	let g:NERDSpaceDelims = 1

	" Use compact syntax for prettified multi-line comments
	let g:NERDCompactSexyComs = 1

	"Enable trimming of trailing whitespace when uncommenting
	let g:NERDTrimTrailingWhitespace = 1

	" Enable NERDCommenterToggle to check all selected lines is commented or not
	let g:NERDToggleCheckAllLines = 1

	vmap ++ <plug>NERDCommenterToggle
	nmap ++ <plug>NERDCommenterToggle
endif

if dein#tap('vim-fugitive')
	nnoremap <Leader>gs :Gstatus<CR>
	nnoremap <Leader>gd :Gdiff<CR>
	nnoremap <Leader>gb :Gblame<CR>
endif

if dein#tap('nerdtree')
  let g:NERDTreeShowHidden=1
	let NERDTreeShowLineNumbers=1
  map <leader>nn :NERDTreeToggle<CR>
  map <F2> :NERDTreeToggle<CR>
	map <Leader>ff :NERDTreeFind<CR>
	autocmd FileType nerdtree setlocal relativenumber
endif

if dein#tap('coc.nvim')
endif

if dein#tap('vim-prettier')
	nmap <Leader>py :Prettier<CR>
	let g:prettier#autoformat = 1
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

  " Move to line
  map sL <Plug>(easymotion-bd-jk)
  nmap sL <Plug>(easymotion-overwin-line)

  " Move to word
  map  sw <Plug>(easymotion-bd-w)
  nmap sw <Plug>(easymotion-overwin-w)
endif

if dein#tap('vista.vim')
  " How each level is indented and what to prepend.
  " This could make the display more compact or more spacious.
  " e.g., more compact: ["▸ ", ""]
  " Note: this option only works the LSP executives, doesn't work for `:Vista ctags`.
  let g:vista_icon_indent = ["╰─▸ ", "├─▸ "]

  " Executive used when opening vista sidebar without specifying it.
  " See all the avaliable executives via `:echo g:vista#executives`.
  let g:vista_default_executive = 'ctags'

  " Set the executive for some filetypes explicitly. Use the explicit executive
  " instead of the default one for these filetypes when using `:Vista` without
  " specifying the executive.
  let g:vista_executive_for = {
        \ 'cpp': 'vim_lsp',
        \ 'php': 'vim_lsp',
        \ }

  " Declare the command including the executable and options used to generate ctags output
  " for some certain filetypes.The file path will be appened to your custom command.
  " For example:
  let g:vista_ctags_cmd = {
        \ 'haskell': 'hasktags -x -o - -c',
        \ }

  " To enable fzf's preview window set g:vista_fzf_preview.
  " The elements of g:vista_fzf_preview will be passed as arguments to fzf#vim#with_preview()
  " For example:
  let g:vista_fzf_preview = ['right:50%']

  " Ensure you have installed some decent font to show these pretty symbols, then you can enable icon for the kind.
  let g:vista#renderer#enable_icon = 1

  " The default icons can't be suitable for all the filetypes, you can extend it as you wish.
  let g:vista#renderer#icons = {
        \   "function": "\uf794",
        \   "variable": "\uf71b",
        \  }
endif

let g:delimitMate_expand_cr = 1
let g:delimitMate_excluded_ft = 'html'

if executable('rg')
	set grepprg=rg\ --color=never
endif


" Marked app
let g:marked_app = "Marked"
autocmd FileType python let b:coc_root_patterns = ['.git', '.env', 'api/']
