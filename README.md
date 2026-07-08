# WezTerm Config (modular)

A modular WezTerm configuration for Windows, split into small files in the
style of common WezTerm config repos.
## Prerequisites

[WezTerm](https://wezterm.org/installation.html) In our case, we need to install the **Windows** Version. 

## Quick Install
**In case for future updates, checkout [WezTerm](https://wezterm.org/installation.html) homepage.
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

## Layout

```
~/.config/wezterm/
  wezterm.lua            Entry point – sets the search path, loads the modules
  config/
    init.lua             Builder that merges the module tables
    general.lua          Behaviour: closing, reload, scrollback, performance
    appearance.lua       Font, cursor, window, transparency, colors
    domains.lua          Default shell (pwsh) + launch menu
    keybindings.lua      Key & mouse bindings
  colors/
    vesper.lua           Custom "Vesper" color palette
```

To add new options, drop them into the matching module. Each module just
returns a Lua table of WezTerm options.

## Transparency

The transparency lives in [`config/appearance.lua`](config/appearance.lua):

```lua
window_background_opacity = 0.7   -- 0.0 = fully transparent, 1.0 = opaque
```

- `macos_window_background_blur` only affects **macOS** (ignored on Windows).
- For a **Windows 11 frosted-glass effect**, uncomment this line in
  `appearance.lua`:
  ```lua
  win32_system_backdrop = 'Acrylic'   -- or: 'Mica' / 'Tabbed'
  ```
  Tip: with Acrylic a slightly higher value such as
  `window_background_opacity = 0.85` often looks nicer.
- Toggle at runtime: **LEADER + o** turns transparency on/off.

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
