# wezterm-stortini

Personal WezTerm configuration with automated setup.

Together with:

- https://github.com/matthewstortini/tmux-stortini
- https://github.com/matthewstortini/nvim-stortini

WezTerm, tmux, and Neovim together form my preferred terminal-based development workflow. WezTerm was chosen because it works across Linux and macOS, making it easy to share this configuration and maintain the same terminal environment across different machines.

This repository contains a `wezterm.lua` configuration file, a rotating background system, and a setup script. The setup script symlinks `~/.config/wezterm` to the repository directory so the repository can live anywhere on your system while WezTerm still loads the configuration from its standard location.

---

## Features

- Simple and clean WezTerm configuration
- Random terminal background selection
- Background automatically changes every **five minutes**
- Nerd Font support for icons in Neovim dashboards, file trees, and status lines
- Configuration automatically reloads when `wezterm.lua` is saved

---

## Installation

Clone the repository and run setup:

```bash
git clone https://github.com/matthewstortini/wezterm-stortini.git
cd wezterm-stortini
./setup_wezterm_configuration.sh
```

The setup script will:

1. Check that `wezterm.lua` exists in the repository
2. Prompt before overwriting any existing `~/.config/wezterm`
3. Create `~/.config` if necessary
4. Symlink `~/.config/wezterm` to the repository directory

After setup, the configuration structure will look like:

```
~/.config/wezterm -> /path/to/wezterm-stortini
```

WezTerm loads its configuration from:

```
~/.config/wezterm/wezterm.lua
```

Restart WezTerm after running the setup script.

WezTerm also automatically reloads configuration changes whenever `wezterm.lua` is saved.

---

## Editing the configuration

Because `~/.config/wezterm` is a symlink to the repository directory created by the setup script, you can edit the configuration directly inside the repository.

For example:

```
wezterm-stortini/wezterm.lua
wezterm-stortini/backgrounds/
```

Any changes will automatically be applied when the configuration reloads.

---

## Fonts

This configuration is designed to work with **Nerd Fonts** so that icons render correctly in Neovim dashboards, file trees, and status lines.

Fonts can be downloaded from:

https://www.nerdfonts.com/

The configuration is currently set up to use:

- **Iosevka Nerd Font Mono**
- **JetBrainsMono Nerd Font** (fallback)

It is recommended to install at least one of these fonts.

If you would prefer to use a different Nerd Font, download it from the Nerd Fonts website and update the font configuration in:

```
wezterm.lua
```

---

## Background images

The repository includes a `backgrounds/` directory containing images used as terminal backgrounds.

When WezTerm starts, a **random background** from this folder is selected.

The configuration is also set up to **automatically change the background every five minutes**, randomly selecting another image from the backgrounds directory. This allows rotating backgrounds without restarting the terminal.

This feature is included simply to add a bit of fun and visual variety to the terminal environment.

Images may be freely added or removed from the `backgrounds/` directory.

---

## Tab management

```
Ctrl-Shift-t     open new tab
Ctrl-Shift-w     close current tab
Ctrl-Tab         move to next tab
Ctrl-Shift-Tab   move to previous tab
```

---

## Useful command-line editing shortcuts

These shortcuts work in most shells and are not specific to this WezTerm configuration.

### Cursor movement

```
Ctrl-a  move cursor to beginning of line
Ctrl-e  move cursor to end of line
Ctrl-b  move cursor back one character
Ctrl-f  move cursor forward one character
Alt-b   move cursor back one word
Alt-f   move cursor forward one word
```

### Deleting text

```
Alt-Backspace  delete the word before the cursor
Alt-d          delete the word after the cursor
Ctrl-u         delete from cursor to start of line
Ctrl-k         delete from cursor to end of line
```

### History

```
Ctrl-r  search command history (press repeatedly to cycle matches)
Alt-.   insert the last argument from the previous command
```

### Cut / paste (kill ring)

```
Ctrl-y  paste previously deleted text
Alt-y   cycle through previous deletions
```

### Transpose

```
Ctrl-t  swap the two characters before the cursor
Alt-t   swap the word before the cursor with the word at the cursor
```

### Case change

```
Alt-u  uppercase the current word
Alt-l  lowercase the current word
Alt-c  capitalize the current word
```

### Other useful commands

```
Ctrl-l  clear the screen
Ctrl-c  cancel the current command
Ctrl-d  delete character under cursor (or exit shell if the line is empty)
```

---

## Notes

This setup is designed to stay simple:

- the repository directory is the **source of truth**
- `~/.config/wezterm` points to it
- background images live in the repository `backgrounds/` directory
- WezTerm loads the configuration from the symlink

That keeps the configuration easy to edit, easy to reinstall, and easy to keep synchronized across machines.

---

## Related repositories

I use this configuration as part of a broader terminal workflow that includes:

Neovim configuration  
https://github.com/matthewstortini/nvim-stortini

tmux configuration  
https://github.com/matthewstortini/tmux-stortini

Together with WezTerm, these form my terminal-based development environment.
