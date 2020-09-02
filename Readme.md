# Martin's Neo/vim Config

This is a place where I put all of my (Neo)vim configuration. This will be a living repository as I learn more about being productive using (Neo)vim

## Screenshot

![Vim Screenshot](https://res.cloudinary.com/martin-labs/image/upload/v1541451517/Blog/vim_screenshot.png)

## Install

### Prerequisites

Before you clone the repo, make sure you have these two requirements installed:

- [shougo/dein.vim](https://github.com/Shougo/dein.vim)
- [ripgrep](https://github.com/BurntSushi/ripgrep#installation)
- NodeJS (coc plugin will complain if there's no node installed)
- Python 3 and 2 with the latest `neovim` package installed. (This will be required by neovim)

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
| [Raimondi/delimitMate]           | Insert mode auto-completion for quotes, parens, brackets, etc     |
| [mhinz/vim-signify]              | ➕ show a diff using vim its sign column.                         |
| [wsdjeg/dein-ui.vim]             | UI for Shougo's dein.vim                                          |
| [easymotion/vim-easymotion]      | Vim motions on speed!                                             |
| [mhinz/vim-grepper]              | 👾 Helps you win at grep.                                         |
| [neoclide/coc.nvim]              | Intellisense engine for vim8 & neovim, full LSP support as VSCode |
| [wakatime/vim-wakatime]          | Vim plugin for [wakatime]                                         |
| [itspriddle/vim-marked]          | Open the current Markdown buffer in Marked.app                    |
| [antoinemadec/coc-fzf]           | Use FZF instead of coc.nvim built-in fuzzy finder.                |
| [tpope/vim-fugitive]             | Fugitive is the premier Vim plugin for Git.                       |
| [tpope/vim-rhubarb]              | If fugitive.vim is the Git, rhubarb.vim is the Hub.               |
| [junegunn/fzf.vim]               | A wrapper to use fzf in your vim                                  |
| [HerringtonDarkholme/yats.vim]   | Yet Another TypeScript Syntax file for Vim                        |
| [MaxMellon/vim-jsx-pretty]       | The React syntax highlighting and indenting plugin for vim        |
| [tpope/vim-rails]                | A wrapper to use fzf in your vim                                  |
| [fatih/vim-go]                   | Adds Go language support for Vim                                  |
| [tmhedberg/SimpyFold]            | No-BS Python code folding for Vim                                 |
| [davidhalter/jedi-vim]           | Using the jedi autocompletion library for VIM.                    |
| [mattn/emmet-vim]                | Emmet for vim                                                     |

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
[raimondi/delimitmate]: https://github.com/Raimondi/delimitMate
[mhinz/vim-signify]: https://github.com/mhinz/vim-signify
[tmhedberg/simpyfold]: https://github.com/tmhedberg/SimpylFold
[davidhalter/jedi-vim]: https://github.com/davidhalter/jedi-vim
[wsdjeg/dein-ui.vim]: https://github.com/wsdjeg/dein-ui.vim
[easymotion/vim-easymotion]: https://github.com/easymotion/vim-easymotion
[mhinz/vim-grepper]: https://github.com/mhinz/vim-grepper
[neoclide/coc.nvim]: https://github.com/neoclide/coc-nvim
[wakatime/vim-wakatime]: https://github.com/wakatime/vim-wakatime
[itspriddle/vim-marked]: https://github.com/itspriddle/vim-marked
[tpope/vim-rails]: https://github.com/tpope/vim-rails
[rafi/vim-config]: https://github.com/rafi/vim-config
[spacevim/spacevim]: https://github.com/SpaceVim/SpaceVim
[fatih/vim-go]: https://github.com/fatih/vim-go
[antoinemadec/coc-fzf]: https://github.com/antoinemadec/coc-fzf
[tpope/vim-fugitive]: https://github.com/tpope/vim-fugitive
[tpope/vim-rhubarb]: https://github.com/tpope/vim-rhubarb
[junegunn/fzf.vim]: https://github.com/junegunn/fzf.vim
[HerringtonDarkholme/yats.vim]: https://github.com/HerringtonDarkholme/yats.vim
[MaxMellon/vim-jsx-pretty]: https://github.com/MaxMEllon/vim-jsx-pretty
[mattn/emmet-vim]: https://github.com/mattn/emmet-vim
