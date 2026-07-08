-- config/domains.lua
--
-- Default shell and launch menu.

return {
   -- Default shell: PowerShell 7 (pwsh).
   -- Note: 'pwsh' is not a real WezTerm domain, so the shell is set via
   -- `default_prog` rather than `default_domain`.
   default_prog = { 'pwsh.exe', '-NoLogo' },

   -- Launch menu (open with LEADER + Space, see keybindings.lua)
   launch_menu = {
      { label = 'PowerShell 7 (pwsh)', args = { 'pwsh.exe', '-NoLogo' } },
      { label = 'Windows PowerShell', args = { 'powershell.exe', '-NoLogo' } },
      { label = 'Command Prompt', args = { 'cmd.exe' } },
   },
}
