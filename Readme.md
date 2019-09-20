# Martin Neo/vim Config

This is a place where I put all of my (Neo)vim configuration. This will be a living repository as I learn more about being productive using (Neo)vim

## Screenshot

![Vim Screenshot](https://res.cloudinary.com/martin-labs/image/upload/v1541451517/Blog/vim_screenshot.png)

## Install

Clone this repo! Clone to `~/.config/nvim`,
we'll also symlink it for Vim:

```sh
mkdir ~/.config
git clone git@github.com:martindavid/nvim-config.git ~/.config/nvim
ln -s ~/.config/nvim ~/.vim
```

## Plugins

All of the plugins that I use:

| Name                             | Description                                                       |
| -------------------------------- | ----------------------------------------------------------------- |
| [Shougo/dein.vim]                | Dark powered Vim/Neovim plugin manager                            |
| [rafi/awesome-colorschemes]      | Awesome color-schemes                                             |
| [scrooloose/nerdcommenter]       | Vim plugin for intensely orgasmic commenting                      |
| [scrooloose/nerdtree]            | Tree explorer plugin                                              |
| [Xuyuanp/nerdtree-git-plugin]    | NERDTree plugin for showing git status                            |
| [itchyny/cursorword]             | Underlines word under cursor                                      |
| [vim-airline/vim-airline]        | Lean & mean status/tabline for vim that's light as air            |
| [vim-airline/vim-airline-themes] | A collection of themes for vineomm-airline                        |
| [sheerun/vim-polyglot]           | A solid language pack for Vim                                     |
| [ctrlpvim/ctrlp.vim]             | Fuzzy file, buffer, mru, tag, etc finder                          |
| [Raimondi/delimitMate]           | Insert mode auto-completion for quotes, parens, brackets, etc     |
| [Shougo/context_filetype.vim]    | ntext filetype library for Vim script                             |
| [mhinz/vim-signify]              | ➕ Show a diff using Vim its sign column.                         |
| [Shougo/denite.nvim]             | 🐉 Dark powered asynchronous unite all interfaces for Neovim/Vim8 |
| [wsdjeg/dein-ui.vim]             | UI for Shougo's dein.vim                                          |
| [easymotion/vim-easymotion]      | Vim motions on speed!                                             |
| [mhinz/vim-grepper]              | 👾 Helps you win at grep.                                         |
| [neoclide/coc.nvim]              | Intellisense engine for vim8 & neovim, full LSP support as VSCode |
| [wakatime/vim-wakatime]          | Vim plugin for [wakatime]                                         |
| [tmhedberg/SimpylFold]           | No-BS Python code folding for Vim                                 |
| [davidhalter/jedi-vim]           | Using the jedi autocompletion library for VIM.                    |
| [mattn/emmet-vim]                | Emmet for vim                                                     |
| [neomake/neomake]                | Asynchronous linting and make framework for Neovim/Vim            |

# Credits

Credits to all of these maintainer who open-source their (Neo)vim config that I can learn.

- [rafi/vim-config]
- [SpaceVim/SpaceVim]

[shougo/dein.vim]: https://github.com/Shougo/dein.vim
[rafi/awesome-colorschemes]: https://github.com/rafi/awesome-colorschemes
[scrooloose/nerdcommenter]: https://github.com/scrooloose/nerdcommenter
[scrooloose/nerdtree]: https://github.com/scrooloose/nerdtree
[itchyny/cursorword]: https://github.com/itchyny/cursorword
[xuyuanp/nerdtree-git-plugin]: https://github.com/Xuyuanp/nerdtree-git-plugin
[vim-airline/vim-airline]: https://github.com/vim-airline/vim-airline
[vim-airline/vim-airline-themes]: https://github.com/vim-airline/vim-airline-themes
[sheerun/vim-polyglot]: https://github.com/sheerun/vim-polyglot
[ctrlpvim/ctrlp.vim]: https://github.com/ctrlpvim/ctrlp.vim
[raimondi/delimitmate]: https://github.com/Raimondi/delimitMate
[mhinz/vim-signify]: https://github.com/mhinz/vim-signify
[shougo/denite.nvim]: https://github.com/Shougo/denite.nvim
[tmhedberg/simpylfold]: https://github.com/tmhedberg/SimpylFold
[davidhalter/jedi-vim]: https://github.com/davidhalter/jedi-vim
[mattn/emmet-vim]: https://github.com/mattn/emmet-vim
[neomake/neomake]: https://github.com/neomake/neomake
[rafi/vim-config]: https://github.com/rafi/vim-config
[spacevim/spacevim]: https://github.com/SpaceVim/SpaceVim
[wsdjeg/dein-ui.vim]: https://github.com/wsdjeg/dein-ui.vim
[easymotion/vim-easymotion]: https://github.com/easymotion/vim-easymotion
[mhinz/vim-grepper]: https://github.com/mhinz/vim-grepper
[neoclide/coc.nvim]: https://github.com/neoclide/coc-nvim
[wakatime/vim-wakatime]: https://github.com/wakatime/vim-wakatime
[wakatime]: https://wakatime.com/vim
