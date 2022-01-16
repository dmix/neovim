# 📕 neovim config

Sometimes minimalist vim dotfiles

### Install

Install Neovim from source following this guide https://github.com/neovim/neovim#install-from-source and run

```
cd ~
git clone https://github.com/dmix/neovim $HOME/neovim
./install.zsh
```

### Overview

Most important files are:

- init.vim
- plugins.vim
- keybindings.vim

To install the plugins run

```
:PlugInstall
```

Or update them all

```
PlugUpdate
```

To open the side file browser `ctrl-n` and opening dirs is `l` and closing is `d`


### Installing Treesitter plugins

:TSInstall all

### Installing CoC plugins for all the languages

```
:CocInstall coc-tsserver coc-css coc-elixir coc-emmet coc-eslint coc-git  coc-go  coc-html coc-markdown  coc-rls coc-sh  coc-stylelint  coc-yaml coc-xml coc-vetur @yaegassy/coc-volar
```

### Other useful configs when you get water on your laptop

See my other config and init dirs:

- 🔴 [macos](https://github.com/dmix/macos)

- 🔵 [zsh](https://github.com/dmix/zsh)


### Whom?

Stuff by Dan McGrady circa 2022

🏙️ https://dmix.dev

or for the normies ☠️  https://twitter.com/dmix
