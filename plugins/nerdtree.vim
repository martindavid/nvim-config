
" NERDTree
" --------
let g:NERDTreeMinimalUI = 1
let g:NERDTreeWinSize = 25
let g:NERDTreeCascadeOpenSingleChildDir = 1
let g:NERDTreeCascadeSingleChildDir = 0
let g:NERDTreeShowHidden = 1
let g:NERDTreeRespectWildIgnore = 0
let g:NERDTreeAutoDeleteBuffer = 0
let g:NERDTreeQuitOnOpen = 1
let g:NERDTreeHijackNetrw = 1
let g:NERDTreeBookmarksFile = $VARPATH.'/treemarks'
let NERDTreeIgnore = [
	\ '\.git$', '\.hg$', '\.svn$', '\.stversions$', '\.pyc$', '\.svn$',
	\ '\.DS_Store$', '\.sass-cache$', '__pycache__$', '\.egg-info$', '\.cache$'
	\ ]

autocmd MyAutoCmd FileType nerdtree call s:nerdtree_settings()

function! s:nerdtree_settings() abort
	setlocal expandtab " Enabling vim-indent-guides
	vertical resize 25
endfunction

" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
autocmd MyAutoCmd WinEnter * if exists('t:NERDTreeBufName') &&
	\ bufwinnr(t:NERDTreeBufName) != -1 && winnr("$") == 1 | q | endif

" if the current window is NERDTree, move focus to the next window
autocmd MyAutoCmd TabLeave * call s:NERDTreeUnfocus()
function! s:NERDTreeUnfocus()
	if exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) == winnr()
		let l:winNum = 1
		while (l:winNum <= winnr('$'))
			let l:buf = winbufnr(l:winNum)

			if buflisted(l:buf) && getbufvar(l:buf, '&modifiable') == 1 &&
					\ ! empty(getbufvar(l:buf, '&buftype'))
				exec l:winNum.'wincmd w'
				return
			endif
			let l:winNum = l:winNum + 1
		endwhile
		wincmd w
	endif
endfunction

" Private helpers {{{
function! s:SID()
	if ! exists('s:sid')
		let s:sid = matchstr(expand('<sfile>'), '<SNR>\zs\d\+\ze_SID$')
	endif
	return s:sid
endfunction
let s:SNR = '<SNR>'.s:SID().'_'

function! s:get_containing_dir(node)
	let path = a:node.path
	if ! path.isDirectory || ! a:node.isOpen
		let path = path.getParent()
	endif
	return path.str()
endfunction
" }}}

" vim: set foldmethod=marker ts=2 sw=2 tw=80 noet :
