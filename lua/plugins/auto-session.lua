-- lua/plugins/auto-session.lua
return {
  "rmagatti/auto-session",
  config = function()
    local nvim_tree = require("nvim-tree")

    local function change_nvim_tree_dir()
      nvim_tree.change_dir(vim.fn.getcwd())
    end

    require("auto-session").setup {
      log_level = "error",
      auto_session_suppress_dirs = {
        "~/",
        "~/Projects",
        "~/Downloads",
        "/",
      },
      pre_save_cmds = { "NvimTreeClose" },
      post_restore_cmds = {
        change_nvim_tree_dir,
        "NvimTreeOpen",
      },
    }
  end,
}

