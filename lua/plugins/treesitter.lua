local overrides = require "configs.overrides"
local cmp_opt = require "configs.cmp"

return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "windwp/nvim-ts-autotag",
    "filNaj/tree-setter",
    "echasnovski/mini.ai",
    "piersolenski/telescope-import.nvim",
    "RRethy/nvim-treesitter-textsubjects",
    "danymat/neogen",
    "kevinhwang91/promise-async",
    {
      "kevinhwang91/nvim-ufo",
      config = function()
        require "configs.ufo"
      end,
    },
    {
      "folke/ts-comments.nvim",
      opts = {},
    },
  },
  opts = overrides.treesitter,
  build = ":TSUpdate",
  init = function(plugin)
    -- perf: make treesitter queries available at startup.
    require("lazy.core.loader").add_to_rtp(plugin)
    require "nvim-treesitter.query_predicates"
  end,
  config = function(_, opts)
    dofile(vim.g.base46_cache .. "syntax")
    dofile(vim.g.base46_cache .. "treesitter")
    require("nvim-treesitter.configs").setup(opts)
  end,
}
