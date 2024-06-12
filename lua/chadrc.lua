-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}
M.ui = {
  theme_toggle = { "solarized_osaka", "everforest" },
  transparency = true,
  theme = "solarized_osaka",
  statusline = {
    separator_style = "round",
  },
}

require("nvim-treesitter.configs").setup {
  autotag = {
    enable = true,
  },
}

return M
