" init.vim contains all of the initialization plugins for vim
" note that this has to be sourced second since dein needs to
" run its scripts first. This contains misc startup settings
" for vim


set nocompatible
syntax enable
filetype plugin indent on
set clipboard=unnamed
set encoding=utf-8
set termguicolors
set nobackup
set noswapfile

colorscheme hybrid_material
set background=dark

" SPACE AND TABS
set tabstop=2		    " number of visual spaces per TAB
set softtabstop=2   " number of spaces in tab when editing
set expandtab		    " tabs are spaces
set shiftwidth=2    " Number of spaces to use in auto(indent)
set smarttab        " Tab insert blanks according to 'shiftwidth'
set autoindent      " Use same indenting on new lines
set smartindent     " Smart autoindenting on new lines
set shiftround

" UI CONFIG
set nu		              " show line number
set showcmd		          " show command in bottom bar
set cursorline		      " highlight current line
set wildmenu		        " visual autocomplete for command menu
set lazyredraw		      " redraw only when need to
set showmatch		        " highlight matching [{()}]
set hlsearch            " highlight search terms
set splitbelow          " Horizontal splits open below current file
set splitright          " Vertical splits open to the right of the current file
set hidden

set winwidth=30         " Minimum width for active window
set winheight=1         " Minimum height for active window
set pumheight=15        " Pop-up menu's line height
set helpheight=12       " Minimum help window height
set previewheight=12    " Completion preview height

set backspace=indent,eol,start

" FOLDING
if has('folding')
	set foldenable
	set foldmethod=syntax
	set foldlevelstart=99
	set foldtext=FoldText()
endif

set switchbuf=useopen,usetab    " Jump to the first open window in any tab
set switchbuf+=vsplit           " Switch buffer behavior to vsplit


let g:python_highlight_all = 1

" Improved Vim fold-text
" See: http://www.gregsexton.org/2011/03/improving-the-text-displayed-in-a-fold/
function! FoldText()
	" Get first non-blank line
	let fs = v:foldstart
	while getline(fs) =~? '^\s*$' | let fs = nextnonblank(fs + 1)
	endwhile
	if fs > v:foldend
		let line = getline(v:foldstart)
	else
		let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
	endif

	let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
	let foldSize = 1 + v:foldend - v:foldstart
	let foldSizeStr = ' ' . foldSize . ' lines '
	let foldLevelStr = repeat('+--', v:foldlevel)
	let lineCount = line('$')
	let foldPercentage = printf('[%.1f', (foldSize*1.0)/lineCount*100) . '%] '
	let expansionString = repeat('.', w - strwidth(foldSizeStr.line.foldLevelStr.foldPercentage))
	return line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
endfunction
