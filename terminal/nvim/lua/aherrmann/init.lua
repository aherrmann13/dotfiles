require("aherrmann.set")
require("aherrmann.remap")
ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
vim.opt.runtimepath:prepend("/usr/lib/nvim")
vim.g.luats = 0
vim.api.nvim_create_autocmd('FileType', {
  pattern = 'lua', -- or { 'lua', 'help' }
  callback = function() vim.treesitter.stop() end,
})
require("aherrmann.lazy_init")

