#!/bin/bash

# Install deps
apt-get install zsh git tmux gcc
git clone https://github.com/go-delve/delve
cd delve
go install github.com/go-delve/delve/cmd/dlv
echo 'export PATH="~/go/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# Install ohmyzsh
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"

# Install nvim
VERSION="v0.9.4"
wget https://github.com/neovim/neovim/releases/download/${VERSION}/nvim-linux64.tar.gz
tar -xzf nvim-linux64.tar.gz
rm nvim-linux64.tar.gz

echo 'export PATH="~/nvim-linux64/bin:$PATH"' >> ~/.zshrc
source ~/.zshrc

# Install tmux package manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp .tmux.conf ~/.tmux.conf

# Install NVIM packages
git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim

mkdir -p ~/.config/nvim/lua
ln -s plugins/ ~/.config/nvim/lua/
ln -s init.lua ~/.config/nvim/init.lua 

