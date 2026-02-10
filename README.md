# Dotfiles

My personal dotfiles for macOS, organized by environment and machine.

## Organization

```
dotfiles/
├── common/          # Shared configurations across all environments
│   └── shell/       # Shell configuration (.zshrc)
├── macos/           # macOS-specific configurations
│   └── config/
│       ├── aerospace/  # Tiling window manager config
│       └── ghostty/    # Terminal emulator config
├── omarchy/         # Machine-specific configs
│   └── config/ghostty/
└── window/          # Machine-specific configs
    └── config/ghostty/
```

## Philosophy

- **Environment-based organization**: Each machine or context has its own directory
- **Shared where sensible**: Shell configuration is common across all environments
- **Tool consistency**: Same terminal setup regardless of which machine I'm on
- **Minimal automation**: Configurations are symlinked manually, no bootstrap scripts

## Tools Used

| Tool | Purpose |
|------|---------|
| **Zsh + Oh My Zsh** | Shell with Powerlevel10k theme |
| **Ghostty** | Modern terminal emulator |
| **Aerospace** | Tiling window manager for macOS |
| **Bun** | JavaScript runtime/package manager |
| **Fish** | Interactive shell (in Ghostty) |

## Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/devrizvy/dotfiles.git ~/dotfiles
   ```

2. Create symlinks (example):
   ```bash
   ln -s ~/dotfiles/common/shell/.zshrc ~/.zshrc
   ln -s ~/dotfiles/macos/config/ghostty/config ~/.config/ghostty/config
   ln -s ~/dotfiles/macos/config/aerospace/aerospace.toml ~/.config/aerospace/aerospace.toml
   ```

3. Install required tools:
   - [Oh My Zsh](https://ohmyz.sh/)
   - [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
   - [Ghostty](https://github.com/mitchellh/ghostty)
   - [Aerospace](https://github.com/nikitabobko/AeroSpace)
   - [Bun](https://bun.sh/)
   - [Homebrew](https://brew.sh/) (for PostgreSQL, Fish)

## Keybindings

### Aerospace (Window Manager)
| Keybinding | Action |
|------------|--------|
| `Alt + H/J/K/L` | Focus windows (vim-style) |
| `Alt + Shift + H/J/K/L` | Move windows |
| `Alt + 1-9` | Switch workspaces |
| `Alt + Shift + 1-9` | Move window to workspace |
| `Alt + Shift + Z/B/N/T/M/O` | Launch apps |
| `Cmd + Enter` | New Ghostty window |

### Ghostty (Terminal)
| Keybinding | Action |
|------------|--------|
| `Super + T` | New tab |
| `Super + W` | Close tab |
| `Super + Shift + [` | Previous tab |
| `Super + Shift + ]` | Next tab |
