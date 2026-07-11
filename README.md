# WezTerm Config (modular)


https://github.com/user-attachments/assets/fc85044e-f0e7-4930-bf50-34f2a671e630


A modular WezTerm configuration for Windows, split into small files in the
style of common WezTerm config repos.
## Highlights
- The terminal is **translucent!**
- Color highlighting
- The colours are easy to customize with Vscode(Vscode has a **Default Color Decorators**).

## Prerequisites

[WezTerm](https://wezterm.org/installation.html) In our case, we need to install the **Windows** Version. 

## Quick Install
In case for future updates, checkout [WezTerm](https://wezterm.org/installation.html) homepage.
### For winget users:

```powershell
winget install wez.wezterm
```

### For scoop users:

```powershell
scoop bucket add extras
scoop install wezterm
```

### For chocolatey users

```powershell
choco install wezterm -y
```


## Install

Clone this repo straight into your WezTerm config directory:

```powershell
git clone https://github.com/danielzikol/wezterm_config.git "$HOME/.config/wezterm"
```

WezTerm loads `~/.config/wezterm/wezterm.lua` automatically. That file is the
entry point and is intentionally small: it sets the Lua search path and then
loads the modules.

> Note:
>if a `~/.wezterm.lua` file exists in your home directory, it takes
> precedence over `~/.config/wezterm/wezterm.lua`. Remove or rename it so this
> config is the one that loads.

To add new options, drop them into the matching module. Each module just
returns a Lua table of WezTerm options.







## Keybindings

**LEADER = Ctrl + a** (press LEADER, release, then the second key).

| Keys | Action |
|---|---|
| `LEADER` `v` | Split pane side by side |
| `LEADER` `b` | Split pane top/bottom |
| `LEADER` `h/j/k/l` or arrows | Move focus between panes |
| `Ctrl+Shift` + arrows | Resize pane |
| `LEADER` `z` | Zoom pane (maximize) |
| `LEADER` `x` | Close pane |
| `LEADER` `c` | New tab |
| `LEADER` `n` / `p` | Next / previous tab |
| `LEADER` `1`…`9` | Jump to tab 1…9 |
| `LEADER` `o` | Toggle transparency |
| `LEADER` `r` | Reload config |
| `LEADER` `f` | Search the scrollback |
| `LEADER` `Space` | Launcher (shells/workspaces) |
| `LEADER` `a` | Send a literal Ctrl+A to the shell |
| `Ctrl+Shift` `c` / `v` | Copy / paste |
| `Ctrl+Shift` `x` | Copy mode |
| `Ctrl+Shift` `p` | Command palette |
| `F11` | Fullscreen |
| `right` | Autocomplete |
| `Ctrl` + click | Open link |
| Right click | Paste |

## Handy

- The config reloads automatically on save
  (`automatically_reload_config = true`).
- To inspect the active colors/keys, open the command palette in WezTerm
  (`Ctrl+Shift+p`) or run `wezterm show-keys` in the terminal.
