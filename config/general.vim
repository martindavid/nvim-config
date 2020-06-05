set clipboard=unnamed
set encoding=utf-8
set termguicolors
set nobackup
set nowritebackup
set noswapfile
set nopaste

colorscheme onedark
set background=dark

filetype plugin indent on
syntax enable


" }}}
" Tabs and Indents {{{
" ----------------
set expandtab     " Don't expand tabs to spaces.
set tabstop=2       " The number of spaces a tab is
set softtabstop=2   " While performing editing operations
set shiftwidth=2    " Number of spaces to use in auto(indent)
set autoindent      " Use same indenting on new lines
set smartindent
set shiftround      " Round indent to multiple of 'shiftwidth'

" UI CONFIG
set nu		              " show line number
set relativenumber      " use relative number, this help a lot with motion
set showcmd		          " show command in bottom bar
set cursorline		      " highlight current line
set wildmenu		        " visual autocomplete for command menu
set lazyredraw		      " redraw only when need to
set showmatch		        " highlight matching [{()}]
set splitbelow          " Horizontal splits open below current file
set splitright          " Vertical splits open to the right of the current file
set hidden
set spell
set title
set confirm
set mouse=a
set scrolloff=3

set winwidth=30         " Minimum width for active window
set winheight=1         " Minimum height for active window
set pumheight=15        " Pop-up menu's line height
set helpheight=10       " Minimum help window height
set previewheight=10    " Completion preview height

set backspace=indent,eol,start

" }}}
" Searching {{{
" ---------
set ignorecase      " Search ignoring case
set smartcase       " Keep case when searching with *
set infercase       " Adjust case in insert completion mode
set incsearch       " Incremental search
set hlsearch        " Highlight search results
set wrapscan        " Searches wrap around the end of the file
set showmatch       " Jump to matching bracket
set matchpairs+=<:> " Add HTML brackets to pair matching
set matchtime=1     " Tenths of a second to show the matching paren
set cpoptions-=m    " showmatch will wait 0.5s or until a char is typed

" FOLDING
if has('folding')
	set foldenable
	set foldmethod=syntax
	set foldlevelstart=99
	set foldtext=FoldText()
endif

set switchbuf=useopen,usetab    " Jump to the first open window in any tab
set switchbuf+=vsplit           " Switch buffer behavior to vsplit

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Enable toggle relative number
" When in insert mode it will always show absolute number, in normal mode show
" relative number
augroup toggle_relative_number
autocmd InsertEnter * :setlocal norelativenumber
autocmd InsertLeave * :setlocal relativenumber

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

" highlight trailing whitespace
match ErrorMsg '\s\+$'
" remove trailing whitespaces automatically
autocmd BufWritePre * :%s/\s\+$//e

hi CursorLine guibg=#4b5057 ctermbg=236 gui=NONE cterm=NONE
