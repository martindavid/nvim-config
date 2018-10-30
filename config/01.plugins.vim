let $VIMPATH = fnamemodify(resolve(expand('<sfile>:p')), ':h:h')
let $VARPATH = expand(($XDG_CACHE_HOME ? $XDG_CACHE_HOME : '~/.cache').'/vim')

" Required:
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.cache/dein')
	call dein#begin('~/.cache/dein')

	" Let dein manage dein
	" Required:
	call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')

	" Add or remove your plugins here:
	call dein#add('rafi/awesome-vim-colorschemes')
	call dein#add('scrooloose/nerdcommenter')
  call dein#add('scrooloose/nerdtree')
	call dein#add('itchyny/vim-cursorword')
	call dein#add('Konfekt/FastFold')
	call dein#add('vim-airline/vim-airline')
	call dein#add('vim-airline/vim-airline-themes')
	call dein#add('sheerun/vim-polyglot')
  call dein#add('nvie/vim-flake8')
  call dein#add('ctrlpvim/ctrlp.vim')
	call dein#add('Raimondi/delimitMate')
	call dein#add('Shougo/neosnippet.vim')
	call dein#add('Shougo/neosnippet-snippets')
	call dein#add('Shougo/context_filetype.vim')
	call dein#add('Shougo/denite.nvim', {'on_cmd': 'Denite', 'hook_source': 'source $VIMPATH/plugins/denite.vim'})

	
	" Javascript
	call dein#add('pangloss/vim-javascript', { 'on_ft': [ 'javascript', 'jsx', 'javascript.jsx' ] })
	call dein#add('othree/jspc.vim', {'on_ft': [ 'javascript', 'jsx', 'javascript.jsx' ]})
	call dein#add('moll/vim-node', {'on_ft': [ 'javascript', 'jsx', 'javascript.jsx' ]})
	call dein#add('elzr/vim-json', {'on_ft': 'json'})

	" Python
	call dein#add('tmhedberg/SimpylFold', {'on_ft': 'python'})

	" Completion
	call dein#add('Shougo/deoplete.nvim')
	
	call dein#add('zchee/deoplete-jedi', { 'on_ft': 'python',
		\ 'on_i': '1',
		\ 'hook_source': 'autocmd FileType python setlocal omnifunc=' })

	call dein#add('carlitux/deoplete-ternjs', {'on_i': 1, 'on_ft': ['javascript', 'jsx', 'javascript.jsx']})

	call dein#add('ternjs/tern_for_vim', {'on_ft': ['javascript', 'jsx', 'javascript.jsx']})
  call dein#add('davidhalter/jedi-vim', {'on_ft': 'python' })
	call dein#add('mattn/emmet-vim', { 'on_i': 1, 'on_ft': [ 'html', 'css', 'jsx', 'javascript', 'javascript.jsx'] })
	
	call dein#add('ludovicchabant/vim-gutentags', { 'on_path': '.*' })
	call dein#add('benekastah/neomake')

	" Required:
	call dein#end()
	call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
	call dein#install()
endif

"End dein Scripts-------------------------