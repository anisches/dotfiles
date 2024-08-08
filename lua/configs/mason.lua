local mason_tool_installer = require "mason-tool-installer"

local options = {
  ensure_installed = {
    "lua-language-server",
    "stylua",
    "tsserver",
    "html",
    "cssls",
    "tailwindcss",
    "lua_ls",
    "pyright",
    "yamlls",
    "dockerls",
    "svelte",
  }, -- not an option from mason.nvim
  mason_tool_installer.setup {
    ensure_installed = {
      "prettier", -- prettier formatter
      "stylua", -- lua formatter
      "isort", -- python formatter
      "black", -- python formatter
      "pylint",
      "eslint_d",
    },
  },

  PATH = "skip",

  ui = {
    icons = {
      package_pending = " ",
      package_installed = "󰄳 ",
      package_uninstalled = " 󰚌",
    },

    keymaps = {
      toggle_server_expand = "<CR>",
      install_server = "i",
      update_server = "u",
      check_server_version = "c",
      update_all_servers = "U",
      check_outdated_servers = "C",
      uninstall_server = "X",
      cancel_installation = "<C-c>",
    },
  },

  max_concurrent_installers = 10,
}

return options
