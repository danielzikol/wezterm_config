-- config/init.lua
--
-- Small builder that merges several option tables into one config.
-- Each module returns a plain table of WezTerm options; they are
-- collected here in order.

local wezterm = require 'wezterm'

---@class Config
---@field options table
local Config = {}
Config.__index = Config

--- Start a new, empty config builder.
---@return Config
function Config:init()
   local o = setmetatable({ options = {} }, Config)
   return o
end

--- Merge a table of options into the config.
--- Warns in the debug log when a key is set twice.
---@param new_options table
---@return Config
function Config:append(new_options)
   if type(new_options) ~= 'table' then
      wezterm.log_error 'Config:append: expected a table of options'
      return self
   end
   for key, value in pairs(new_options) do
      if self.options[key] ~= nil then
         wezterm.log_warn('Config: overwriting duplicate key "' .. tostring(key) .. '"')
      end
      self.options[key] = value
   end
   return self
end

return Config
