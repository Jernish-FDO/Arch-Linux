#!/bin/bash

# This script installs a complete development environment on Arch Linux.

# --- Functions ---

install_yay() {
    echo "--- Installing yay ---"
    sudo pacman -S --needed --noconfirm git base-devel
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si --noconfirm
    cd ..
    rm -rf yay
}

install_base_tools() {
    echo "--- Installing Base Tools ---"
    yay -S --needed --noconfirm \
        neofetch htop curl wget unzip zip \
        firefox google-chrome \
        visual-studio-code-bin python nodejs npm \
        discord slack-desktop \
        vlc spotify
}

install_web_dev_tools() {
    echo "--- Installing Web Dev Tools ---"
    yay -S --needed --noconfirm \
        alacritty kitty \
        ruby go \
        postgresql mysql redis \
        nginx apache \
        docker docker-compose

    echo "--- Configuring Web Dev Tools ---"
    sudo systemctl enable --now postgresql
    sudo -iu postgres initdb -D /var/lib/postgres/data
    sudo systemctl enable --now mysqld
    sudo mysql_install_db --user=mysql --basedir=/usr --datadir=/var/lib/mysql
    sudo systemctl enable --now redis
    sudo systemctl enable --now nginx
    sudo systemctl enable --now httpd
    sudo systemctl enable --now docker
    sudo usermod -aG docker $USER
}

install_flutter_tools() {
    echo "--- Installing Flutter Tools ---"
    yay -S --needed --noconfirm flutter android-studio
    echo 'export PATH="$PATH:/opt/flutter/bin"' >> ~/.bashrc
    source ~/.bashrc
}

install_react_native_tools() {
    echo "--- Installing React Native Tools ---"
    yay -S --needed --noconfirm watchman jdk-openjdk
    sudo npm install -g react-native-cli expo-cli
}

# --- Main Script ---

# Check for yay
if ! command -v yay &> /dev/null
then
    install_yay
fi

# Install all tools
install_base_tools
install_web_dev_tools
install_flutter_tools
install_react_native_tools

echo "--- Installation Complete! ---"
