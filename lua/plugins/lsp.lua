local lspconfig = require'lspconfig'
local cmp = require'cmp'

lspconfig.ts_ls.setup {
  on_attach = function(client, bufnr)
    -- Desabilitar formatação pelo tsserver (opcional, use um formatador separado, como Prettier)
    client.server_capabilities.documentFormattingProvider = false
  end,
  capabilities = require('cmp_nvim_lsp').default_capabilities(),
}

require'lspconfig'.prismals.setup{}

require('lsp_signature').setup({
  floating_window = true,
  hint_prefix =  "🐾 ",
  bind = true,
  floating_window_above_cur_line = true,
  doc_lines = 2,
})

lspconfig.html.setup {
  on_attach = function(client, bufnr)
    client.server_capabilities.documentFormattingProvider = false 
  end,
  capabilities = require('cmp_nvim_lsp').default_capabilities(), -- Optional: For autocompletion support
}
