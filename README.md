# My Dotfiles

This repository contains my personal dotfiles for configuring my development environment. It includes configurations for `tmux`, `Neovim`, shell (`bash`/`zsh`), and more. The setup is **modular**, managed with `GNU Stow` for easy installation and maintenance.

---

## 📂 Repository Structure

```
 dotfiles/
 ├── nvim/          # Neovim configuration
 │   ├── .config/nvim/
 │   └── ...
 ├── tmux/          # Tmux configuration
 │   ├── .tmux.conf
 │   └── ...
 ├── shell/         # Shell (bash/zsh) configuration
 │   ├── .bashrc
 │   ├── .zshrc
 │   ├── .gitconfig
 │   └── ...
 ├── .gitignore     # Ignore unnecessary files
 └── README.md      # This file
```

Each directory represents a separate set of configurations, and `stow` is used to manage symlinks.

---

## 🚀 Installation (Setting Up Dotfiles)

### **1️⃣ Clone the Repository**
```sh
git clone https://github.com/nturbo1/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

### **2️⃣ Install GNU Stow**
```sh
sudo apt install stow  # Debian/Ubuntu/Linux Mint
sudo pacman -S stow    # Arch Linux
brew install stow      # macOS
```

### **3️⃣ Symlink the Configurations**
```sh
stow tmux
stow nvim
stow shell
```
This will create symlinks, mapping files from `dotfiles/` into your home directory (`~`).

---

## 📄 Updating Dotfiles

To update your configs and apply new changes:
```sh
cd ~/dotfiles
git pull
stow tmux nvim shell
```

---

## 🛠️ Uninstalling / Removing Symlinks

To **remove a symlinked configuration**, use:
```sh
stow -D tmux
stow -D nvim
stow -D shell
```
This will remove the symlinks **without deleting** your actual dotfiles.

---

## 🛠️ Making Changes

1. **Edit your dotfiles** inside `~/dotfiles/`
2. **Commit the changes:**
   ```sh
   git add .
   git commit -m "Updated tmux config"
   git push origin main
   ```

---

## 📆 Adding a New Configuration

To track new configs, move them to `~/dotfiles/` and symlink them with `stow`:
```sh
mv ~/.config/newtool ~/dotfiles/newtool/
stow newtool
git add .
git commit -m "Added newtool config"
git push origin main
```

---

## 🔥 Why Use Dotfiles + Stow?
✅ **Easy to sync** across machines  
✅ **Simple version control** with Git  
✅ **Avoids manual copying** of configs  
✅ **Safe**—symlinks keep your `~` clean  

---

## 🌟 License
This dotfiles repository is personal. Feel free to **fork and modify** for your own use.  

---

🚀 **Enjoy your dotfiles setup!**


