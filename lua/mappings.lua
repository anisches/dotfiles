require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set


map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- nvimtree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
map("n", "<C-n>", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })

-- Comment
map("n", "<leader>/", "gcc", { desc = "comment toggle", remap = true })
map("v", "<leader>/", "gc", { desc = "comment toggle", remap = true })

--remap theme
map("n", "<leader>T", "<cmd>Telescope themes<CR>", { desc = "telescope nvchad themes" })

-- add new tab NOT tabufline
map("n", "<leader>t", "<cmd>tabedit<CR>", { desc = "tab new" })
map("n", "<leader><Tab>", "<cmd>tabnext<CR>", { desc = "tab new" })

--autosession
map("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore session for cwd" })
map("n", "<leader>ws", "<cmd>SessionSave<CR>", { desc = "Save session for auto session root dir" })

--outline

--map("n", "<leader>o", "<cmd>Outline<CR>",{ desc = "Toggle Outline" })
