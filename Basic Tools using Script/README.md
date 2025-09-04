# 🐧 Arch Linux YAY Scripts

![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)

Welcome to the `yay` scripts directory for Arch Linux! This guide will walk you through using the provided scripts to set up your Arch Linux environment with essential tools and applications.

---

## 📜 Table of Contents

- [🐧 Arch Linux YAY Scripts](#-arch-linux-yay-scripts)
  - [📜 Table of Contents](#-table-of-contents)
  - [🤔 What is `yay`?](#-what-is-yay)
  - [🚀 `install.sh` - Your Personal Setup Assistant](#-installsh---your-personal-setup-assistant)
    - [✅ Prerequisites](#-prerequisites)
    - [🔐 A Note on Security](#-a-note-on-security)
    - [✨ How to Use](#-how-to-use)
    - [🎨 Customizing the `install.sh` Script](#-customizing-the-installsh-script)
    - [📦 What's Inside? A Look at the Installed Tools](#-whats-inside-a-look-at-the-installed-tools)
  - [🎉 Post-Installation Steps](#-post-installation-steps)
  - [🧠 Frequently Asked Questions (FAQ)](#-frequently-asked-questions-faq)
  - [🤔 Troubleshooting](#-troubleshooting)
  - [🆘 Getting Help](#-getting-help)
  - [🤝 Contributing](#-contributing)
  - [📄 License](#-license)

---

## 🤔 What is `yay`?

`yay` is an AUR (Arch User Repository) helper. The AUR is a community-driven repository for Arch users, containing thousands of packages not available in the official Arch repositories. `yay` helps you search, install, and manage these packages with ease.

> **💡 Tip:** Think of `yay` as a supercharged version of `pacman` that can also access the vast collection of software in the AUR.

---

## 🚀 `install.sh` - Your Personal Setup Assistant

The `install.sh` script is designed to automate the installation of a curated list of essential tools and applications for developers and power users. It's a great way to get your new Arch Linux system up and running quickly.

### ✅ Prerequisites

Before running the script, please ensure you have the following:

*   An active internet connection.
*   `sudo` privileges (you will be prompted for your password).
*   `yay` installed on your system. If you don't have `yay` installed, please refer to the main `README.md` in the parent directory.

### 🔐 A Note on Security

> **Always review scripts before running them on your system.** While this script is designed to be safe and helpful, it's good practice to understand what a script does before executing it. You can open the `install.sh` file in a text editor to see the commands it will run. This script is transparent and straightforward, but developing a habit of reviewing scripts is a crucial security practice.

### ✨ How to Use

1.  **Make the script executable:** This command gives your system permission to run the script.
    ```bash
    chmod +x install.sh
    ```

2.  **Run the script:**
    ```bash
    ./install.sh
    ```

    The script will then ask for your password to install the packages.

### 🎨 Customizing the `install.sh` Script

You can easily customize the list of packages to be installed. Open the `install.sh` file in a text editor and you will see a variable named `packages`. You can add or remove packages from this list.

For example, to add the `gimp` image editor and remove `go`, you would edit the list like this:

```bash
packages=(
    # ... existing packages
    # "go" # Commented out to prevent installation
    "gimp" # Added to the list of packages to install
)
```

### 📦 What's Inside? A Look at the Installed Tools

The script installs a variety of tools, grouped by category:

| Category          | Tools                                                                                                                                                                                                                                   |
| ----------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 💻 **Development**  | `git`, `wget`, `curl`, `unzip`, `neovim`, `visual-studio-code-bin`, `docker`, `docker-compose`, `nodejs`, `npm`, `python`, `python-pip`, `go`                                                                                                   |
| 🐚 **Shell & Terminal** | `zsh`, `zsh-completions`, `oh-my-zsh-git`, `powerline-fonts`, `tmux`                                                                                                                                                                      |
| 🌐 **Web Browsers**   | `google-chrome`, `firefox`                                                                                                                                                                                                              |
| 🖥️ **System Utilities** | `htop`, `neofetch`                                                                                                                                                                                                                      |

---

## 🎉 Post-Installation Steps

After the script finishes, there are a few things you should do:

1.  **Log out and log back in:** This is necessary for the `zsh` shell to become your default shell.
2.  **Configure `git`:** Set up your name and email for `git` commits:
    ```bash
    git config --global user.name "Your Name"
    git config --global user.email "youremail@example.com"
    ```
3.  **Explore `zsh` and Oh My Zsh:** Customize your shell prompt, add plugins, and explore the features of `zsh`. You can find the configuration file at `~/.zshrc`. Some popular plugins to consider are:
    *   `zsh-autosuggestions`: Suggests commands as you type based on your history.
    *   `zsh-syntax-highlighting`: Provides syntax highlighting for the command line.

---

## 🧠 Frequently Asked Questions (FAQ)

*   **Why use a script to install packages?**
    *   This script helps to automate the process of setting up a new Arch Linux system, saving you time and effort. It also provides a curated list of popular and useful packages for developers.

*   **Can I run the script multiple times?**
    *   Yes, you can run the script multiple times. The script uses the `--needed` flag with `yay`, which means it will only install packages that are not already installed or are outdated.

*   **What if I already have some of these packages installed?**
    *   The script will simply skip the packages that are already installed and up-to-date.

*   **How do I uninstall these packages?**
    *   You can uninstall the packages individually using `yay -Rns <package-name>`.

---

## 🤔 Troubleshooting

*   **Package not found:** If you get a "package not found" error, make sure the package name is correct and available in the official repositories or the AUR.
*   **Installation failed:** If a package fails to install, try installing it manually with `yay -S <package-name>` to see more detailed error messages.
*   **Check the Arch Wiki:** The [Arch Wiki](https://wiki.archlinux.org/) is an excellent resource for troubleshooting any issues.

---

## 🆘 Getting Help

If you're having trouble with the script or have any questions, please feel free to [open an issue](https://github.com/jernish/Arch-Linux/issues) on the GitHub repository.

---

## 🤝 Contributing

Contributions are welcome! If you have any suggestions for new packages, improvements to the script, or enhancements to this guide, please feel free to open an issue or submit a pull request.

---

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

<!-- ## 📜 Changelog

### v1.0.0 (2025-09-04)

*   Initial release of the `install.sh` script and `README.md` guide.

--- -->

Happy hacking! 🚀