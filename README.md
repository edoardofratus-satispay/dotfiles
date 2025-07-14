# Mac Setup Guide with Dotfiles

This repository contains dotfiles and configuration scripts to quickly set up a new Mac with all the necessary tools and configurations.

## Quick Start

1. **Clone this repository**:
   ```bash
   git clone https://github.com/yourusername/dotfiles.git ~/dotfiles
   cd ~/dotfiles
   ```

2. **Run the installation script**:
   ```bash
   chmod +x install.sh
   ./install.sh
   ```

3. **Restart your terminal** to apply all changes.

## What's Included

### Applications & Tools (via Homebrew)
- **Development Tools**: Git, GitHub CLI, Go, Node.js, Python 3.13, Hugo
- **Terminal Enhancements**: Zsh completions, syntax highlighting, Starship prompt, Powerlevel10k
- **System Utilities**: bottom (system monitor), lsd (ls alternative), walk, thefuck
- **Applications**: AI Terminal, DevUtils, Notion Calendar
- **Fonts**: Hack Nerd Font

### Configuration Files
The install script creates symbolic links for configuration files (currently configured for):
- `.gitconfig` - Git configuration
- `.zshrc` - Zsh shell configuration

## Manual Setup Steps

### 1. Install Homebrew (if not already installed)
```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### 2. Install packages from Brewfile
```bash
brew bundle install --file ~/dotfiles/Brewfile
```

### 3. Configure Shell
- The script will automatically set up Zsh with syntax highlighting and completions
- Starship and Powerlevel10k are available for enhanced prompts

## Adding New Configurations

To add new dotfiles:
1. Place the configuration file in this repository
2. Add the file mapping to the `files_to_symlink` array in `install.sh`
3. Format: `"filename_in_repo target_path_in_home"`

## Troubleshooting

- If you encounter permission issues, ensure the install script is executable: `chmod +x install.sh`
- Existing configuration files are automatically backed up with a `.bak` extension
- Restart your terminal after installation to ensure all changes take effect

## Customization

Feel free to modify the `Brewfile` to add or remove applications according to your needs. The current setup includes essential development tools and productivity applications.