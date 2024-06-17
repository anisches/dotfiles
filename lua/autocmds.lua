require "nvchad.autocmds"

local autocmd = vim.api.nvim_create_autocmd


  autocmd("FileType", {
    pattern = { "json", "jsonc" },
    callback = function()
      vim.wo.spell = false
      vim.wo.conceallevel = 0
    end,
  }),
