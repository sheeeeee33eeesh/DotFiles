#!/usr/bin/env bash

mkdir -p ~/.config/ ~/Desktop
mv ./fish/ ~/.config/
fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && cat ~/.config/fish/fish_plugins | while read line ; fisher install $line ; end"

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

mv ./nvim/ ~/.config/

npx tree-sitter generate

pip install pylatexenc

chsh -s $(which fish)
