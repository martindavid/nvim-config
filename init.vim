let g:maplocalleader=';'
let g:mapleader=','
let g:python_host_prog = '/Users/martin.valentino/.pyenv/versions/neovim2/bin/python'
let g:python3_host_prog = '/Users/martin.valentino/.pyenv/versions/neovim3/bin/python'

for fpath in split(globpath('~/.config/nvim/config/', '*.vim'), '\n')
    exe 'source' fpath
endfor