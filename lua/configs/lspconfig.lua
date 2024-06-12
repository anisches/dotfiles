-- EXAMPLE
local on_attach = require("nvchad.configs.lspconfig").on_attach
local on_init = require("nvchad.configs.lspconfig").on_init
local capabilities = require("nvchad.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "html", "cssls", "tsserver", "pyright", "eslint", "rust_analyzer", "tailwindcss", "yamlls" }

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    on_init = on_init,
    capabilities = capabilities,
  }
end

for _, lsp in ipairs(servers) do
  if lspconfig[lsp] == "tailwindcss" then
    -- warp the attach function
    on_attach = function(_, bufnr)
      require("tailwindcss-colors").buf_attach(bufnr)
      on_attach(_, bufnr)
    end
  end
end
