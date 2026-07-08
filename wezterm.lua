-- wezterm.lua
--
-- Entry point for the modular WezTerm config (~/.config/wezterm/wezterm.lua).
-- Kept intentionally small: it puts the module folder on the Lua search path
-- and merges the modules.

local wezterm = require 'wezterm'

-- Make `require 'config...'` and `require 'colors...'` resolve against
-- ~/.config/wezterm.
local config_dir = wezterm.home_dir .. '/.config/wezterm'
package.path = config_dir .. '/?.lua;' .. config_dir .. '/?/init.lua;' .. package.path

local Config = require 'config'

return Config:init()
   :append(require 'config.general')
   :append(require 'config.appearance')
   :append(require 'config.domains')
   :append(require 'config.keybindings')
   .options
