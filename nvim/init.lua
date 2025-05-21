-- ~/.config/nvim/init.lua
local home = os.getenv("HOME") or os.getenv("USERPROFILE")
package.path = package.path .. ";" .. home .. "\\.config\\nvim\\lua\\?.lua"
require('user.keymaps')
