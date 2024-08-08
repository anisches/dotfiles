return {
  { "mhartington/formatter.nvim" },
  { "prettier/vim-prettier" },

  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = { "python" },
    opts = function()
      return require "configs.null-ls"
    end,
  },
}
