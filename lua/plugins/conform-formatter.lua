local conform = require'conform'

conform.setup({
  formatters_by_ft = {
    javascript = { "prettierd", "prettier" },
    html = { "prettierd", "prettier" },
    css = { "prettierd", "prettier" },
    typescript = { "prettierd", "prettier" },
    json = { "prettierd", "prettier" },
    typescriptreact = { "prettierd", "prettier" },
    javascriptreact = { "prettierd", "prettier" },
    lua = { "stylua" },
  },
  format_on_save = {
    async = false,
    files = {
      filetypes = {},
    },
    events = { "BufWritePre" },
  },
})
