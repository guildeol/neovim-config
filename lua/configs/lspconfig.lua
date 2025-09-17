require("nvchad.configs.lspconfig").defaults()

local servers = {
    "clangd",
    "rust-analyzer",
}

vim.lsp.enable(servers)
