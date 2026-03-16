# Backup Config – Development Environment Setup

This guide explains how to set up the development environment using **WSL** and the **backup-config** bootstrap scripts.

The setup installs and configures:

- Zsh + Powerlevel10k
- Python environment
- Rust toolchain
- Development tools
- Git and SSH configuration

The environment is designed to run development tools inside **WSL**, using **WezTerm** as the terminal.

---

# 1. Install WSL

Open **PowerShell as Administrator** and run:

```
wsl.exe --install
```

After the installation completes, **restart your computer**.

---

# 2. List Available Linux Distributions

After rebooting, open **PowerShell** and run:

```
wsl --list --online
```

This will show the available Linux distributions.

---

# 3. Install a Distribution

Install your preferred distribution:

```
wsl.exe --install <distro>
```

---

# 4. Start the Distribution

Start WSL with:

```
wsl.exe
```

The first time you run it, Linux will finish its setup and ask you to create:

- a **username**
- a **password**

---

# 5. Install WezTerm

Install **WezTerm** in Windows.
This terminal will be used to work with WSL.

Download and install it from the official site.

After installation, open **WezTerm** and connect to your WSL distribution.

---

# 6. Run the Bootstrap Installer

Inside the WSL environment run:

```
curl -fsSL https://raw.githubusercontent.com/alejaquant/backup-config/main/bootstrap.sh | bash
```

This command will:

1. Download the bootstrap script
2. Install required packages
3. Clone the repository
4. Configure the development environment
5. Install programming languages and tools

---

# 7. Copy Configuration Files

After the installation finishes, copy the configuration files.

## Zsh Configuration (WSL)

Copy the Zsh configuration files to your Linux home directory:

```
cp zsh/.zshrc ~/
cp zsh/.p10k.zsh ~/
```

---

## WezTerm Configuration (Windows)

Copy the WezTerm configuration file to your Windows user directory:

```
cp wezterm/.wezterm.lua /mnt/c/Users/<username>/
```

---

# Repository Structure

```
backup-config
│
├─ brew
│ └─ install-brew.sh
│
├─ git
│ └─ setup-git.sh
│
├─ wezterm
│ └─ .wezterm.lua
│
├─ zsh
│ ├─ .zshrc
│ └─ .p10k.zsh
│
├─ python
│ └─ install-python.sh
│
├─ rust
│ └─ install-rust.sh
│
├─ scripts
│ ├─ install-base.sh
│ ├─ install-languages.sh
│ ├─ install-zsh.sh
│ ├─ install-tools.sh
│ └─ install-ssh.sh
│
├─ bootstrap.sh
│
└─ README.md
```
