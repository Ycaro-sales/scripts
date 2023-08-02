#!/usr/bin/env bash

git config --global user.name ycaro sales 
git config --global user.email ycaro00287@gmail.com

ssh-keygen -t ed25519 -C "ycaro00287@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_ed25519

echo "Insira uma "
read -p "Aperte uma tecla para continuar"

cat "~/.ssh/id_ed25519"

ssh -T git@github.com
