# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Repository Overview

This is a personal dotfiles repository for macOS environments, organized by context/machine. The repository uses a minimal structure with environment-specific configurations while maintaining consistency across shared tools.

## Directory Structure

```
dotfiles/
├── common/          # Shared configurations across all environments
│   └── shell/       # Shell configuration (.zshrc)
├── macos/           # macOS-specific configurations
│   └── config/
│       ├── aerospace/  # Tiling window manager config
│       └── ghostty/    # Terminal emulator config
├── omarchy/         # Machine-specific configs (named workspace)
│   └── config/ghostty/
└── window/          # Machine-specific configs (named workspace)
    └── config/ghostty/
```

## Key Tools and Configurations

### Shell (Zsh with Oh My Zsh + Powerlevel10k)
- Location: `common/shell/.zshrc`
- Theme: Powerlevel10k (configured via `~/.p10k.zsh`)
- Plugins: git, zsh-autosuggestions, zsh-syntax-highlighting, bun, npm
- Key features:
  - Bun runtime is prioritized in PATH
  - PostgreSQL 17 via Homebrew (`/opt/homebrew/opt/postgresql@17/bin`)
  - npm global packages (`~/.npm-global/bin`)
  - Windsurf AI assistant integration
  - Auto-opens `~/webDevelopment` when launching outside VS Code

### Terminal (Ghostty)
- Config files are **identical** across all environments (macos, omarchy, window)
- Theme: Kanagawabones
- Font: JetBrains Mono 14px
- Shell: Fish (`/opt/homebrew/bin/fish`)
- Keybindings: Super+T (new tab), Super+W (close), Super+Shift+[/] (navigate tabs)
- Background: 95% opacity with blur

### Window Manager (Aerospace)
- Location: `macos/config/aerospace/aerospace.toml`
- Modern tiling window manager for macOS
- Key bindings:
  - Alt+H/J/K/L - Focus windows (vim-style)
  - Alt+Shift+H/J/K/L - Move windows
  - Alt+1-9 - Switch workspaces
  - Alt+Shift+1-9 - Move window to workspace and follow
  - Alt+Shift+Z/B/N/T/M/O - Launch apps (Zen, Brave, VS Code, Ghostty, Spotify, Obsidian)
  - Cmd+Enter - Open new Ghostty window
- Service mode: Alt+Shift+; (reload config, flatten workspace, join windows)
- 9 workspaces configured with monitor assignments (1-4 on main, 5-9 span secondary/main)

## Architecture Notes

### Configuration Philosophy
- **Environment separation**: Each machine/context has its own folder
- **Shared shell**: The `.zshrc` is shared but contains conditional logic for different contexts
- **Tool consistency**: Same terminal configuration across all environments

### Deployment
This repository does **not** include automated setup scripts. Configurations are meant to be symlinked manually:
```bash
# Example symlinks (adjust paths as needed)
ln -s /path/to/dotfiles/common/shell/.zshrc ~/.zshrc
ln -s /path/to/dotfiles/macos/config/ghostty/config ~/.config/ghostty/config
ln -s /path/to/dotfiles/macos/config/aerospace/aerospace.toml ~/.config/aerospace/aerospace.toml
```

### External Dependencies
These configurations rely on the following being installed separately:
- Oh My Zsh + Powerlevel10k theme
- Homebrew (for PostgreSQL 17, Fish shell)
- Ghostty terminal
- Aerospace window manager
- Bun runtime
- JetBrains Mono font

## Development Context

The repository is configured for web development workflows:
- Default working directory: `~/webDevelopment`
- JavaScript tooling: Bun (prioritized), npm with global packages
- Database: PostgreSQL 17
- Editor: VS Code (primary), Windsurf (AI-assisted)
- Note-taking: Obsidian (auto-assigned to workspace "O" in Aerospace)
