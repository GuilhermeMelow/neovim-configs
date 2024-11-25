local lspconfig = require'lspconfig'
local cmp = require'cmp'
lspconfig.ts_ls.setup {
  on_attach = function(client, bufnr)
    -- Desabilitar formatação pelo tsserver (opcional, use um formatador separado, como Prettier)
    client.server_capabilities.documentFormattingProvider = false
  end,
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
}
