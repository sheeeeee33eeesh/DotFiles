#!/usr/bin/env bash

apt install fish wget git curl npm gcc python3-pylatexenc -y
mkdir -p ~/.config/fish/ ~/Desktop
mv ./fish/ ~/.config/
fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher $(cat ~/.config/fish/fish_plugins | tr '\n' ' ')"

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
wget "https://github.com/neovim/neovim/releases/download/v0.10.2/nvim-linux64.tar.gz" -O /opt/nvim-linux64.tar.gz
cd /opt
tar -xzvf nvim-linux64.tar.gz && rm nvim-linux64.tar.gz
ln -s /opt/nvim-linux64/bin/nvim /usr/bin/nvim
cd -
mv ./nvim/ ~/.config/
npx tree-sitter generate
pip install pylatexenc

wget "https://github.com/BurntSushi/ripgrep/releases/download/14.1.1/ripgrep-14.1.1-x86_64-unknown-linux-musl.tar.gz" -O /opt/ripgrep.tar.gz

#RIPGREP
cd /opt
tar -xzvf ripgrep.tar.gz
mv /opt/ripgrep-14.1.1-x86_64-unknown-linux-musl/ /opt/ripgrep && rm /opt/ripgrep.tar.gz
ln -s /opt/ripgrep/rg /usr/bin/
cd - 

# FZF
wget "https://github.com/junegunn/fzf/releases/download/v0.56.0/fzf-0.56.0-linux_amd64.tar.gz" -O /usr/bin/fzf.tar.gz
cd /usr/bin/
tar -xzvf fzf.tar.gz && rm ./fzf.tar.gz
cd -

# FD
wget "https://github.com/sharkdp/fd/releases/download/v10.2.0/fd-v10.2.0-x86_64-unknown-linux-gnu.tar.gz" -O /opt/fd.tar.gz
cd /opt/
tar -xzvf ./fd.tar.gz && rm ./fd.tar.gz
mv /opt/fd-v10.2.0-x86_64-unknown-linux-gnu/ /opt/fd
ln -s /opt/fd/fd /usr/bin/fd
cd -

# BAT
wget "https://github.com/sharkdp/bat/releases/download/v0.24.0/bat-v0.24.0-x86_64-unknown-linux-gnu.tar.gz" -O /opt/bat.tar.gz
cd /opt/
tar -xzvf /opt/bat.tar.gz && rm bat.tar.gz
mv /opt/bat-v0.24.0-x86_64-unknown-linux-gnu/ /opt/bat
ln -s /opt/bat/bat /usr/bin/
cd -

chsh -s $(which fish)
