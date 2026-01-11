return {

  -- Auto-Session
  {
        "rmagatti/auto-session",
        lazy = false,
        opts = {
            suppressed_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
        },
    },

  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- LSP configuration plugin
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- Treesitter
  {
      "nvim-treesitter/nvim-treesitter",
      opts = {
          ensure_installed = {
              "cpp",
              "vim",
              "lua",
          },
      },
  },
}
