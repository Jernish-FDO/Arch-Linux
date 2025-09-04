# Arch Linux YAY Scripts

This directory contains scripts for Arch Linux using the `yay` AUR helper.

## Installation of Basic Tools

The `install.sh` script installs a set of basic development tools on Arch Linux.

### Usage

1.  Make the script executable:

    ```bash
    chmod +x install.sh
    ```

2.  Run the script:

    ```bash
    ./install.sh
    ```

### Installed Tools

The script installs the following tools:

-   **Development:**
    -   `git`
    -   `wget`
    -   `curl`
    -   `unzip`
    -   `neovim`
    -   `visual-studio-code-bin`
    -   `docker`
    -   `docker-compose`
    -   `nodejs`
    -   `npm`
    -   `python`
    -   `python-pip`
    -   `go`
-   **Shell & Terminal:**
    -   `zsh`
    -   `zsh-completions`
    -   `oh-my-zsh-git`
    -   `powerline-fonts`
    -   `tmux`
-   **Web Browsers:**
    -   `google-chrome`
    -   `firefox`
-   **System Utilities:**
    -   `htop`
    -   `neofetch`

After the installation, `zsh` is set as the default shell. You will need to log out and log back in for the changes to take effect.
