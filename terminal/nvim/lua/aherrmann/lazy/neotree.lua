return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons",
  },
  lazy = false,
  opts = {
    close_if_last_window = true,
    filesystem = {
      filtered_items = {
        visible = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      window = {
        mappings = {
          ["F"] = function(state)
            local node = state.tree:get_node()
            local path = node.path

            -- If cursor is on a file, search its parent folder.
            if node.type ~= "directory" then
              path = vim.fn.fnamemodify(path, ":h")
            end

            require("telescope.builtin").find_files({
              cwd = path,
              no_ignore = false, -- respect .gitignore
              hidden = false,
            })
          end,
        },
      },
    },
  },
}
