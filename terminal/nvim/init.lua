vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- keymaps
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)
vim.keymap.set('n', '<leader>wq', vim.cmd.wq)

-- is there a way to trigger an install without this block?
if not vim.loop.fs_stat(lazypath) then 
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        "nyoom-engineering/oxocarbon.nvim",
        config = function () 
            vim.o.background = "dark"
            vim.cmd.colorscheme("oxocarbon")
            
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end,
    }

})
