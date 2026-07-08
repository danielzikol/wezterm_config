-- config/general.lua
--
-- General behaviour: closing, reload, scrollback, performance.

return {
   -- Closing
   window_close_confirmation = 'NeverPrompt',
   exit_behavior = 'CloseOnCleanExit',

   -- Reload the config automatically when these files are saved
   automatically_reload_config = true,

   -- Scrollback & bell
   scrollback_lines = 10000,
   audible_bell = 'Disabled',

   -- Updates
   check_for_updates = false,

   -- Rendering / performance
   -- WebGpu uses the GPU (D3D12/Vulkan). Switch to 'OpenGL' on graphics issues.
   front_end = 'WebGpu',
   max_fps = 120,
   animation_fps = 60,

   default_workspace = 'main',
}
