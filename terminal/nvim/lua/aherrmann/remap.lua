vim.keymap.set('n', '<leader>w', ':w<CR>')
vim.keymap.set('n', '<leader>q', ':q<CR>')
vim.keymap.set('n', '<Esc>', ':nohl<CR>')


local function neotree_toggle_focus()
  local manager = require("neo-tree.sources.manager")
  local renderer = require("neo-tree.ui.renderer")

  local state = manager.get_state("filesystem")

  if state and state.winid and vim.api.nvim_win_is_valid(state.winid) then
    if vim.api.nvim_get_current_win() == state.winid then
      vim.cmd("wincmd p")
    else
      vim.api.nvim_set_current_win(state.winid)
    end
  else
    vim.cmd("Neotree focus")
  end
end

vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>")
vim.keymap.set("n", "<leader>b", neotree_toggle_focus)
vim.keymap.set("n", "<leader>o", "<cmd>Neotree reveal<CR>")
vim.keymap.set("n", "<leader>r", ":%s/")
