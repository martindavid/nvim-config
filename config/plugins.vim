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
	call dein#add('Raimondi/delimitMate')
	call dein#add('mhinz/vim-signify')
	call dein#add('wsdjeg/dein-ui.vim')
  call dein#add('easymotion/vim-easymotion')
	call dein#add('mhinz/vim-grepper')
	call dein#add('wakatime/vim-wakatime')
  call dein#add('itspriddle/vim-marked')
	call dein#add('neoclide/coc.nvim', {'merge':0, 'rev': 'release', 'hook_source': 'source $VIMPATH/plugins/coc.vim'})
  call dein#add('antoinemadec/coc-fzf', {'rev': 'release'})
	call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-rhubarb')
  call dein#add('liuchengxu/vista.vim')
  " ./install --all so the interactive script doesn't block
  " you can check the other command line options  in the install file
  call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
  call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

	" Javascript
	" call dein#add('prettier/vim-prettier', { 'build': 'npm install', 'on_ft': ['javascript', 'jsx', 'javascript.jsx', 'typescript', 'typescript.tsx' ] })
	call dein#add('HerringtonDarkholme/yats.vim')
	call dein#add('MaxMEllon/vim-jsx-pretty')

	" Python
	call dein#add('tmhedberg/SimpylFold', {'on_ft': 'python'})
	call dein#add('davidhalter/jedi-vim', {'on_ft': 'python' })

	" Ruby / Rails
	call dein#add('tpope/vim-rails', {'on_ft': 'ruby'})

	" Go
	call dein#add('fatih/vim-go', {'on_ft': 'go'})

	" Required:
	call dein#end()
	call dein#save_state()
endif

" If you want to install not installed plugins on startup.
if dein#check_install()
	call dein#install()
endif

"End dein Scripts-------------------------
