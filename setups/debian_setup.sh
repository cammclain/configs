#!/bin/env bash

sudo apt update && sudo apt upgrade -y
sudo apt install git snapd -y

sh <(curl -L https://nixos.org/nix/install) --no-daemon
sudo apt install tor python3-dev python3-pip python3-venv build-essential docker.io docker-compose tmux zsh curl htop fzf -y

curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz

rm nvim-linux64.tar.gz


sudo snap install microk8s --classic