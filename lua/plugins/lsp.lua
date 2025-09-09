local lspconfig = require'lspconfig'
local cmp = require'cmp'
local capabilities = require('cmp_nvim_lsp').default_capabilities()

lspconfig.ts_ls.setup {
  on_attach = function(client)
    client.server_capabilities.documentFormattingProvider = false
  end,
  capabilities = capabilities,
}

lspconfig.html.setup {
  on_attach = function(client)
    client.server_capabilities.documentFormattingProvider = false
  end,
  capabilities = capabilities,
}

lspconfig.css.setup {
  on_attach = function(client)
    client.server_capabilities.documentFormattingProvider = false
  end,
  capabilities = capabilities,
}
