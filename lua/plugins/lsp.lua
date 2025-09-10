local lspconfig = require'lspconfig'
local capabilities = require('cmp_nvim_lsp').default_capabilities()


require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = { "angularls", "eslint", "ts_ls", "cssls", "csharp_ls", "html", "tailwindcss" },
}

lspconfig.ts_ls.setup {
  on_attach = function(client)
    client.server_capabilities.documentFormattingProvider = false
  end,
  capabilities = capabilities,
  filetypes = {
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json"
  }
}

lspconfig.html.setup {
  on_attach = function(client)
    client.server_capabilities.documentFormattingProvider = false
  end,
  capabilities = capabilities,
}
