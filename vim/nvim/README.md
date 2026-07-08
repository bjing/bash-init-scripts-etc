Instructions

## Copy config file
Generally, neovim config files should be under ~/.config/nvim/ for *nix systems.

This directory generally needs to be created manually. 

```sh
mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim
```
## Install plugins
Plugins are already specified in init.vim.

Install [Vim Plug](https://github.com/junegunn/vim-plug#neovim) and inside Neovim, run
```
:PlugInstall
```

## Coc config
Inside Neovim, 

```
:CoCConfig
```
then copy the whole coc-settings.json content inside it, save and exit

## Profit!
