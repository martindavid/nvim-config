" deoplete.vim contains vim settings relevant to the deoplete autocompletion
" plugin

" deoplete options
let g:deoplete#enable_at_startup = 1
let g:deoplete#enable_smart_case = 1

" Python
let g:python_host_prog = '/Users/macbook-pro/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/macbook-pro/.pyenv/versions/neovim3/bin/python'


let g:deoplete#enable_refresh_always = 0
let g:deoplete#enable_camel_case = 1
let g:deoplete#max_abbr_width = 35
let g:deoplete#max_menu_width = 20
let g:deoplete#skip_chars = ['(', ')', '<', '>']
let g:deoplete#tag#cache_limit_size = 800000
let g:deoplete#file#enable_buffer_path = 1

if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
endif

" Disable the candidates in Comment/String syntaxes.
" call deoplete#custom#source('_', 'disabled_syntaxes', ['Comment', 'String'])

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" ignored sources
let g:deoplete#ignore_sources = {}
let g:deoplete#ignore_sources._ = ['buffer', 'around']
