-- lua/plugins/nvim-tree.lua
return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    filters = {
      dotfiles = false,
      git_ignored = false,
      custom = {
        ".pytest_cache",
        "__pycache__",
        ".git",
        ".cache"
      },
    },
    git = {
      enable = true,
      ignore = false,
    },
  },
}

