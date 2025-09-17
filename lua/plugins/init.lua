return {
    {
        "stevearc/conform.nvim",
        -- event = 'BufWritePre', -- uncomment for format on save
        opts = require "configs.conform",
    },

    -- Mason
    {
        "williamboman/mason.nvim",
        opts = {
            ensure_installed = {
                "clangd",
                "rust-analyzer",
                "python-lsp-server",
                "lua_ls",
            },
        },
    },

    -- Treesitter
    {
        "nvim-treesitter/nvim-treesitter",
        opts = {
            ensure_installed = {
                "vim",
                "lua",
                "vimdoc",
                "cpp",
                "rust",
            },
        },
    },

    -- Neotest
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-neotest/nvim-nio",
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter",
            "alfaix/neotest-gtest",
        },
        config = function()
            require("neotest").setup {
                adapters = {
                    require("neotest-gtest").setup {},
                },
            }
        end,
    },

    -- Auto Session
    {
        "rmagatti/auto-session",
        lazy = false,
        opts = {
            suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
        },
    },

    -- Extra rust stuff
    {
        "mrcjkb/rustaceanvim",
        version = "^4", -- Recommended
        lazy = false, -- This plugin is already lazy
    },

    -- Distant.nvim
    {
        "chipsenkbeil/distant.nvim",
        branch = "v0.3",
        config = function()
            require("distant"):setup()
        end,
    },
}
