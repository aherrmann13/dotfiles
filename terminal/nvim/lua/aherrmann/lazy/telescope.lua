return {
  "nvim-telescope/telescope.nvim",
  version = "*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },
  config = function()
    require('telescope').setup({
    pickers = {
      marks = {
        attach_mappings = function(prompt_bufnr, map)
          map("i", "<C-d>", function()
            require("telescope.actions").delete_mark(prompt_bufnr)
          end)
          return true -- Keep default mappings as well as the custom ones
        end,
      },
    },

    })

    local builtin = require('telescope.builtin')
    vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
    vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
  end
}
