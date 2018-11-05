let g:maplocalleader=';'

for fpath in split(globpath('~/.config/nvim/config/', '*.vim'), '\n')
    exe 'source' fpath
endfor