-- config/appearance.lua
--
-- Appearance: font, cursor, tab bar, window, transparency and colors.

local wezterm = require 'wezterm'

return {
   -- Font
   font = wezterm.font_with_fallback {
      'JetBrains Mono',
      'Symbols Nerd Font Mono', -- fallback for icons/glyphs
   },
   font_size = 12.5,
   line_height = 1.0,

   -- Cursor
   default_cursor_style = 'BlinkingBar',

   -- Tab bar (disabled)
   enable_tab_bar = true,
   use_fancy_tab_bar = false,
   hide_tab_bar_if_only_one_tab = true,
   show_new_tab_button_in_tab_bar = false,
   tab_max_width = 32,

   -- Window & transparency
   -- 0.0 = fully transparent, 1.0 = fully opaque.
   window_background_opacity = 0.7,
   -- Blur behind the window. macOS only (ignored on Windows).
   macos_window_background_blur = 20,
   -- Windows 11 frosted-glass effect (see README):
   -- win32_system_backdrop = 'Acrylic',
   text_background_opacity = 1.0,

   window_decorations = 'RESIZE',
   window_padding = {
      left = 12,
      right = 12,
      top = 12,
      bottom = 8,
   },
   window_frame = {
      font = wezterm.font { family = 'JetBrains Mono', weight = 'Bold' },
      font_size = 11.0,
   },
   adjust_window_size_when_changing_font_size = false,

   -- Dim inactive panes slightly (only visible with splits)
   inactive_pane_hsb = {
      saturation = 0.9,
      brightness = 0.7,
   },

   -- Color scheme (custom "Vesper")
   color_scheme = 'Vesper',
   color_schemes = {
      ['Vesper'] = require 'colors.vesper',
   },
}
