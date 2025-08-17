require "nvchad.options"

vim.opt.cursorlineopt ='both' -- to enable cursorline!

vim.opt.colorcolumn = "140"  -- Show vertical line at column 140
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#3a3a3a" })  -- Slightly darker than background

