require "nvchad.mappings"

local map = vim.keymap.set
local telescope = require("telescope.builtin")

-- Existing mappings
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Telescope mappings
map("n", "<C-\\>s", telescope.lsp_references, { desc = "Find references to symbol under cursor" })
map("n", "<C-\\>i", telescope.lsp_incoming_calls, { desc = "Find incoming calls for symbol under cursor" })
map("n", "<C-\\>o", telescope.lsp_outgoing_calls, { desc = "Find outgoing calls for symbol under cursor" })
map("n", "<C-\\>d", telescope.lsp_document_symbols, { desc = "List document symbols in current buffer" })
map("n", "<C-\\>w", telescope.lsp_workspace_symbols, { desc = "List symbols in workspace" })
map("n", "<C-\\>y", telescope.lsp_dynamic_workspace_symbols, { desc = "Dynamically list workspace symbols" })
map("n", "<C-\\>E", telescope.diagnostics, { desc = "List diagnostics in all buffers" })
map("n", "<C-\\>m", telescope.lsp_implementations, { desc = "Go to implementations of symbol under cursor" })
map("n", "<C-\\>g", telescope.lsp_definitions, { desc = "Go to definitions of symbol under cursor" })
map("n", "<C-\\>t", telescope.lsp_type_definitions, { desc = "Go to type definitions of symbol under cursor" })

