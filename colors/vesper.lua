-- colors/vesper.lua
--
-- Custom "Vesper" color palette. Registered in config/appearance.lua via
-- `color_schemes` and activated with `color_scheme = 'Vesper'`.

return {
   foreground = '#FFFFFF',
   background = '#080009',

   -- Cursor
   cursor_bg = '#FFC799',
   cursor_fg = '#101010',
   cursor_border = '#FFC799',

   -- Selection
   selection_bg = 'rgba(50% 50% 50% 50%)',

   -- Scrollbar
   scrollbar_thumb = 'rgba(50% 50% 50% 50%)',

   -- Split divider
   split = '#505050',

   -- ANSI colors (0-7)
   ansi = {
      '#101010', -- black
      '#F5A191', -- red
      '#90B99F', -- green
      '#E6B99D', -- yellow
      '#ACA1CF', -- blue
      '#E29ECA', -- magenta
      '#EA83A5', -- cyan
      '#A0A0A0', -- white
   },
   -- Bright ANSI colors (8-15)
   brights = {
      '#7E7E7E', -- bright black
      '#FF8080', -- bright red
      '#99FFE4', -- bright green
      '#FFC799', -- bright yellow
      '#B9AEDA', -- bright blue
      '#ECAAD6', -- bright magenta
      '#F591B2', -- bright cyan
      '#FFFFFF', -- bright white
   },

   -- Tab bar colors (only apply if the tab bar is re-enabled)
   tab_bar = {
      background = '#101010',
      active_tab = {
         bg_color = '#FFC799',
         fg_color = '#101010',
      },
      inactive_tab = {
         bg_color = '#101010',
         fg_color = '#7E7E7E',
      },
      inactive_tab_hover = {
         bg_color = '#1C1C1C',
         fg_color = '#A0A0A0',
      },
      new_tab = {
         bg_color = '#101010',
         fg_color = '#7E7E7E',
      },
      new_tab_hover = {
         bg_color = '#1C1C1C',
         fg_color = '#A0A0A0',
      },
   },
}
