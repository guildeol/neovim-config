require "nvchad.options"

-- Enable cursorline
vim.opt.cursorlineopt ='both'

-- Show vertical line at column 140
vim.opt.colorcolumn = "140"
vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#3a3a3a" })  -- Slightly darker than background

-- Open nvim-tree after session-restore
local nvim_tree = require("nvim-tree")
local auto_session = require("auto-session")

local function change_nvim_tree_dir()
	nvim_tree.change_dir(vim.fn.getcwd())
end

auto_session.setup({
	log_level = "error",
	auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
	post_restore_cmds = { change_nvim_tree_dir, "NvimTreeOpen" },
	pre_save_cmds = { "NvimTreeClose" },
})

