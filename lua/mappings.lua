require "nvchad.mappings"

local map = vim.keymap.set
local neotest = require("neotest")

-- Existing mappings
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Neotest mappings for GoogleTest
map("n", "<leader>tr", function() neotest.run.run() end, { desc = "Run nearest test" })
map("n", "<leader>tf", function() neotest.run.run(vim.fn.expand("%")) end, { desc = "Run all tests in file" })
map("n", "<leader>ts", function() neotest.summary.toggle() end, { desc = "Toggle test summary" })
map("n", "<leader>to", function() neotest.output.open({ enter = true }) end, { desc = "Open test output" })
