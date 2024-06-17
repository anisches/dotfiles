require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

local opt = vim.opt
local cmd = vim.cmd

opt.relativenumber = true

--mouse disable
opt.mouse = ""

-- undercurl
--BUG: not working
cmd [[let &t_Cs = "\e[4:3m]"]]
cmd [[let &t_Ce = "\e[4:3m]"]]
