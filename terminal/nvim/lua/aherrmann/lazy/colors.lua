return { 
  {
    "EdenEast/nightfox.nvim",
      config = function () 
        vim.o.background = "dark"
        vim.cmd.colorscheme("carbonfox")

        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

        vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none" })
        end,
  }
}
