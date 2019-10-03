" Required:
if dein#load_state('~/.cache/dein')
	call dein#begin('~/.cache/dein')
	" Let dein manage dein
	" Required:
	call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

	" Add or remove your plugins here:
	call dein#add('rafi/awesome-vim-colorschemes')
	call dein#add('scrooloose/nerdcommenter')
  call dein#add('scrooloose/nerdtree', { 'hook_source': 'source $VIMPATH/plugins/nerdtree.vim'})
	call dein#add('Xuyuanp/nerdtree-git-plugin')
	call dein#add('itchyny/vim-cursorword')
	call dein#add('vim-airline/vim-airline')
	call dein#add('vim-airline/vim-airline-themes')
	call dein#add('sheerun/vim-polyglot')
  call dein#add('ctrlpvim/ctrlp.vim')
	call dein#add('Raimondi/delimitMate')
	call dein#add('mhinz/vim-signify')
	call dein#add('Shougo/denite.nvim', {'on_cmd': 'Denite', 'trusted': 1, 'hook_source': 'source $VIMPATH/plugins/denite.vim'})
	call dein#add('Shougo/deoplete.nvim')
  call dein#add('Shougo/echodoc.vim')	
	call dein#add('wsdjeg/dein-ui.vim')
  call dein#add('easymotion/vim-easymotion')
	call dein#add('mhinz/vim-grepper')
	" call dein#add('neoclide/coc.nvim', {'merge':0, 'rev': 'release', 'hook_source': 'source $VIMPATH/plugins/coc.vim'})
	call dein#add('wakatime/vim-wakatime')
	call dein#add('autozimu/LanguageClient-neovim', {
		\ 'rev': 'next',
		\ 'build': 'bash install.sh',
		\ })


	" Javascript
	call dein#add('prettier/vim-prettier', { 'build': 'npm install', 'on_ft': ['javascript', 'jsx', 'javascript.jsx', 'typescript', 'typescript.tsx' ] })
	call dein#add('HerringtonDarkholme/yats.vim')
	call dein#add('MaxMEllon/vim-jsx-pretty')
	call dein#add('mattn/emmet-vim', { 'on_i': 1, 'on_ft': [ 'html', 'css', 'jsx', 'javascript', 'javascript.jsx', 'typescript', 'typescript.tsx'] })

	" Python
	call dein#add('tmhedberg/SimpylFold', {'on_ft': 'python'})
	call dein#add('davidhalter/jedi-vim', {'on_ft': 'python' })
	call dein#add('google/yapf', { 'on_ft': 'python' })

	" Ruby / Rails
	call dein#add('tpope/vim-rails', {'on_ft': 'ruby'})
	
	call dein#add('tpope/vim-fugitive')
	
	call dein#add('ludovicchabant/vim-gutentags', { 'if': "executable('ctags')", 'on_path': '.*', 'hook_add': 'source $VIMPATH/plugins/gutentags.vim' })
	call dein#add('neomake/neomake')

	" Required:
	call dein#end()
	call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
	call dein#install()
endif

"End dein Scripts-------------------------
