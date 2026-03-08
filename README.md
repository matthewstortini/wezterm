# wezterm-stortini

Personal configuration for WezTerm designed to work well with:

- https://github.com/matthewstortini/nvim-stortini
- https://github.com/matthewstortini/tmux-stortini

Together these provide a consistent terminal, editor, and multiplexer environment.

---

## Installation

WezTerm loads its configuration from:

~/.config/wezterm/

Clone this repository directly into that location:

```bash
mkdir -p ~/.config
cd ~/.config
git clone https://github.com/matthewstortini/wezterm-stortini.git wezterm
```

Restart WezTerm after cloning. The configuration will be automatically loaded from:

~/.config/wezterm/wezterm.lua

WezTerm also automatically reloads configuration changes when the file is saved.

---

## Fonts

This configuration is designed to work with Nerd Fonts so that icons render correctly in Neovim dashboards, file trees, and status lines.

Fonts can be downloaded from:

https://www.nerdfonts.com/

The configuration is currently set up to use:

- Iosevka Nerd Font Mono
- JetBrainsMono Nerd Font (fallback)

It is recommended to install one of these fonts from the Nerd Fonts website.

If you would prefer to use a different font, download it from nerdfonts.com and update the font settings in:

wezterm.lua

---

## Background images

The repository includes a **backgrounds/** directory containing images used for the terminal background.

When WezTerm starts, a random background from this folder is selected.

The configuration is also set up to **automatically change the background every five minutes**, randomly selecting another image from the backgrounds directory. This allows for rotating backgrounds without restarting the terminal.

This feature is included simply to add a bit of fun and visual variety to the terminal environment.

Images may be removed or added to the backgrounds folder if desired.

## Tab management

Ctrl-Shift-t    open new tab  
Ctrl-Shift-w    close current tab  
Ctrl-Tab        move to next tab  
Ctrl-Shift-Tab  move to previous tab  

---

## Useful command-line editing shortcuts

These shortcuts work in most shells, and are not unique to this package's WezTerm configuration. 

### Cursor movement

Ctrl-a  — move cursor to beginning of line  
Ctrl-e  — move cursor to end of line  
Ctrl-b  — move cursor back one character  
Ctrl-f  — move cursor forward one character  
Alt-b   — move cursor back one word  
Alt-f   — move cursor forward one word  

### Deleting text

Alt-Backspace  — delete the word before the cursor  
Alt-d          — delete the word after the cursor  
Ctrl-u         — delete from cursor to start of line  
Ctrl-k         — delete from cursor to end of line  

### History

Ctrl-r  — search command history (press repeatedly to cycle matches)  
Alt-.   — insert the last argument from the previous command  

### Cut / paste (kill ring)

Ctrl-y  — paste previously deleted text  
Alt-y   — cycle through previous deletions  

### Transpose

Ctrl-t  — swap the two characters before the cursor  
Alt-t   — swap the word before the cursor with the word at the cursor  

### Case change

Alt-u  — uppercase the current word  
Alt-l  — lowercase the current word  
Alt-c  — capitalize the current word  

### Other useful commands

Ctrl-l  — clear the screen  
Ctrl-c  — cancel the current command  
Ctrl-d  — delete character under cursor (or exit shell if the line is empty)

---

## Related repositories

This configuration is intended to be used alongside:

Neovim configuration  
https://github.com/matthewstortini/nvim-stortini

tmux configuration  
https://github.com/matthewstortini/tmux-stortini

These repositories together provide a cohesive terminal-based development environment.
