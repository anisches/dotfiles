return {
  "geg2102/nvim-python-repl",
  dependencies = "nvim-treesitter",
  ft = { "python" },
  config = function()
    require("nvim-python-repl").setup {
      execute_on_send = true,
      vsplit = true,
    }
  end,
}
