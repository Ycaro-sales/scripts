#!/usr/bin/env bash

sudo su

pamac install neovim
pamac install nodejs
pamac install i3
pamac install zsh

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

cd ~/.config/

git clone https://github.com/ycaro-sales/dotfiles.git 
git clone https://github.com/Ycaro-sales/nvim.git

cd dotfiles
mv i3 ../i3
mv i3status ../i3status
mv kitty ../kitty
mv tmux ../tmux
mv .zshrc ~/.zshrc
mv spaceship.zsh ../spaceship.zsh

cd ~
