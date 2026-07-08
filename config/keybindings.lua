-- config/keybindings.lua
--
-- Key and mouse bindings.
--
-- Uses a tmux-style leader key: press LEADER, then the second key.
-- LEADER is Ctrl + a.

local wezterm = require 'wezterm'
local act = wezterm.action

-- Toggle transparency on/off (LEADER + o).
local function toggle_transparency(window, _pane)
   local overrides = window:get_config_overrides() or {}
   if overrides.window_background_opacity == nil then
      -- currently transparent (0.7 from the base config) -> make it opaque
      overrides.window_background_opacity = 1.0
   else
      -- back to the base config (0.7)
      overrides.window_background_opacity = nil
   end
   window:set_config_overrides(overrides)
end

return {
   -- Leader (prefix): Ctrl + a
   leader = { key = 'a', mods = 'CTRL', timeout_milliseconds = 1000 },

   keys = {
      -- Send a literal Ctrl+A: LEADER, then a
      { key = 'a', mods = 'LEADER|CTRL', action = act.SendKey { key = 'a', mods = 'CTRL' } },

      -- Panes: split
      { key = 'v', mods = 'LEADER', action = act.SplitHorizontal { domain = 'CurrentPaneDomain' } },
      { key = 'b', mods = 'LEADER', action = act.SplitVertical { domain = 'CurrentPaneDomain' } },
      -- Panes: move focus (vim keys or arrows)
      { key = 'h', mods = 'LEADER', action = act.ActivatePaneDirection 'Left' },
      { key = 'j', mods = 'LEADER', action = act.ActivatePaneDirection 'Down' },
      { key = 'k', mods = 'LEADER', action = act.ActivatePaneDirection 'Up' },
      { key = 'l', mods = 'LEADER', action = act.ActivatePaneDirection 'Right' },
      { key = 'LeftArrow', mods = 'LEADER', action = act.ActivatePaneDirection 'Left' },
      { key = 'DownArrow', mods = 'LEADER', action = act.ActivatePaneDirection 'Down' },
      { key = 'UpArrow', mods = 'LEADER', action = act.ActivatePaneDirection 'Up' },
      { key = 'RightArrow', mods = 'LEADER', action = act.ActivatePaneDirection 'Right' },
      -- Panes: zoom / close
      { key = 'z', mods = 'LEADER', action = act.TogglePaneZoomState },
      { key = 'x', mods = 'LEADER', action = act.CloseCurrentPane { confirm = false } },

      -- Resize panes: hold Ctrl+Shift + arrows
      { key = 'LeftArrow', mods = 'CTRL|SHIFT', action = act.AdjustPaneSize { 'Left', 3 } },
      { key = 'DownArrow', mods = 'CTRL|SHIFT', action = act.AdjustPaneSize { 'Down', 3 } },
      { key = 'UpArrow', mods = 'CTRL|SHIFT', action = act.AdjustPaneSize { 'Up', 3 } },
      { key = 'RightArrow', mods = 'CTRL|SHIFT', action = act.AdjustPaneSize { 'Right', 3 } },

      -- Tabs (usable even without a visible tab bar)
      { key = 'c', mods = 'LEADER', action = act.SpawnTab 'CurrentPaneDomain' },
      { key = 'n', mods = 'LEADER', action = act.ActivateTabRelative(1) },
      { key = 'p', mods = 'LEADER', action = act.ActivateTabRelative(-1) },
      { key = '1', mods = 'LEADER', action = act.ActivateTab(0) },
      { key = '2', mods = 'LEADER', action = act.ActivateTab(1) },
      { key = '3', mods = 'LEADER', action = act.ActivateTab(2) },
      { key = '4', mods = 'LEADER', action = act.ActivateTab(3) },
      { key = '5', mods = 'LEADER', action = act.ActivateTab(4) },
      { key = '6', mods = 'LEADER', action = act.ActivateTab(5) },
      { key = '7', mods = 'LEADER', action = act.ActivateTab(6) },
      { key = '8', mods = 'LEADER', action = act.ActivateTab(7) },
      { key = '9', mods = 'LEADER', action = act.ActivateTab(8) },

      -- Misc
      { key = 'o', mods = 'LEADER', action = wezterm.action_callback(toggle_transparency) },
      { key = 'r', mods = 'LEADER', action = act.ReloadConfiguration },
      { key = 'f', mods = 'LEADER', action = act.Search 'CurrentSelectionOrEmptyString' },
      { key = 'Space', mods = 'LEADER', action = act.ShowLauncher },

      -- Copy / paste, copy mode and command palette
      { key = 'c', mods = 'CTRL|SHIFT', action = act.CopyTo 'Clipboard' },
      { key = 'v', mods = 'CTRL|SHIFT', action = act.PasteFrom 'Clipboard' },
      { key = 'x', mods = 'CTRL|SHIFT', action = act.ActivateCopyMode },
      { key = 'p', mods = 'CTRL|SHIFT', action = act.ActivateCommandPalette },
      { key = 'F11', mods = 'NONE', action = act.ToggleFullScreen },
   },

   -- Mouse
   mouse_bindings = {
      -- Ctrl + click opens the link under the cursor
      {
         event = { Up = { streak = 1, button = 'Left' } },
         mods = 'CTRL',
         action = act.OpenLinkAtMouseCursor,
      },
      -- Right click pastes from the clipboard
      {
         event = { Down = { streak = 1, button = 'Right' } },
         mods = 'NONE',
         action = act.PasteFrom 'Clipboard',
      },
   },
}
