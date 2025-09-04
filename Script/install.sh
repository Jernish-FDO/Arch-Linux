#!/bin/bash

# This script installs a set of basic development tools on Arch Linux using yay.

# Update package database and upgrade all installed packages
yay -Syu --noconfirm

# Install development tools
yay -S --noconfirm --needed \
  git \
  wget \
  curl \
  unzip \
  zsh \
  zsh-completions \
  oh-my-zsh-git \
  powerline-fonts \
  neovim \
  visual-studio-code-bin \
  google-chrome \
  firefox \
  docker \
  docker-compose \
  nodejs \
  npm \
  python \
  python-pip \
  go \
  tmux \
  htop \
  neofetch

# Set Zsh as the default shell for the current user
chsh -s /bin/zsh

echo "Installation of basic tools is complete."
echo "Please log out and log back in for the new shell to take effect."
echo "You may need to configure some tools like Git and Zsh manually."
