return {

  vim.cmd [[
  autocmd BufWritePost * lua require("conform").format { lsp_fallback = true }
]],
}
