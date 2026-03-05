return {
  -- TypeScript & Angular LSP
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        angularls = {},
        ts_ls = {},
        html = {},
        cssls = {},
        jsonls = {},
      },
    },
  },

  -- Formatting
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.typescript = { "prettier" }
      opts.formatters_by_ft.html = { "prettier" }
      opts.formatters_by_ft.htmlangular = { "prettier" }
      opts.formatters_by_ft.css = { "prettier" }
      opts.formatters_by_ft.scss = { "prettier" }
      opts.formatters_by_ft.json = { "prettier" }
    end,
  },
  -- Mason tools
  {
    "mason-org/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = opts.ensure_installed or {}
      vim.list_extend(opts.ensure_installed, {
        "angular-language-server",
        "typescript-language-server",
        "prettier",
        "eslint_d",
      })
    end,
  },
}
