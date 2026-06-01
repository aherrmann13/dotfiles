return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require('mason').setup()

    require('mason-lspconfig').setup({
      ensure_installed = {
        "ts_ls",
        "angularls",
        "html",
        "cssls",
        "eslint",
       -- "hls",
      },
    })
    vim.opt.completeopt = { "menu", "menuone", "popup", "noinsert", "fuzzy" }

    vim.api.nvim_create_autocmd("LspAttach", {
      callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)

        if client:supports_method("textDocument/completion") then
          vim.lsp.completion.enable(true, client.id, ev.buf, {
            autotrigger = true,
          })
        end
      end,
    })
    vim.keymap.set("n", "<Leader>ds", vim.diagnostic.open_float, { desc = "Show diagnostic" })
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action)
    defaults = {
      layout_strategy = "flex",
    },
    vim.diagnostic.config({
      --      virtual_text = true,  -- show inline messages
      signs = true,         -- show signs in the gutter
      underline = true,     -- underline problematic text
      update_in_insert = false, -- don't update diagnostics while typing
      severity_sort = true,     -- sort diagnostics by severity
      float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
      },
    })
    vim.diagnostic.config({
      signs = {
        text = {
          [vim.diagnostic.severity.ERROR] = "E",
          [vim.diagnostic.severity.WARN]  = "W",
          [vim.diagnostic.severity.INFO]  = "I",
          [vim.diagnostic.severity.HINT]  = "H",
        },
      },
    })
  end,
}
