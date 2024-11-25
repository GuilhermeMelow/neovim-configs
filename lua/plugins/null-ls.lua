local null_ls = require("null-ls")

null_ls.setup({
  sources = {
    null_ls.builtins.formatting.prettier.with({
      filetypes = {'javascript', 'typescript', 'json', 'lua'}
    }), -- Use Prettier for formatting
  },
  on_attach = function(client, bufnr)
    if client.server_capabilities.documentFormattingProvider then
      -- Format on save
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = vim.api.nvim_create_augroup("FormatOnSave", { clear = true }),
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ async = false })
        end,
      })
    end
  end,
})
