-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig

local M = {}
M.ui = {
  tabufline = {
    show_numbers = true,
    enabled = true,
    order = { "treeOffset", "buffers", "tabs" },
  },

  transparency = true,
  theme = "solarized_osaka",

  statusline = {
    separator_style = "round",
  },

  hl_override = {
    CursorLine = {
      bg = "#39505b",
    },
    Comment = { italic = true },
    ["@comment"] = { italic = true },
  },
}

return M
