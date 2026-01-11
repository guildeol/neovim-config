require "nvchad.options"

-- Indentation settings (4 spaces)
vim.opt.tabstop = 4        -- Number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 4     -- Number of spaces to use for each step of (auto)indent
vim.opt.softtabstop = 4    -- Number of spaces that a <Tab> counts for while performing editing operations
vim.opt.expandtab = true   -- Use spaces instead of tabs
vim.opt.smartindent = true -- Smart autoindenting when starting a new line

-- Enable cursorline
vim.opt.cursorlineopt = 'both'

-- Show vertical line at column 140
vim.opt.colorcolumn = "140"
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#3a3a3a" })

