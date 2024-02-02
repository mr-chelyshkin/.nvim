---@type ChadrcConfig
local M = {}

M.plugins = "custom.plugins"

local theme = require("custom.theme")
M.ui = theme.ui

local mappings = require("custom.mappings")
M.mappings = mappings

return M
