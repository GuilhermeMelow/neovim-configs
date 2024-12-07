
-- Telescope  mapping
local builtin = require('telescope.builtin')
vim.api.nvim_set_keymap('n', '<C-f>', ":Telescope live_grep<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-P>', ":Telescope find_files<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>r', ':Telescope lsp_references<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<F12>', ':lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true })

vim.keymap.set('n', 'K', vim.lsp.buf.hover, { noremap = true, silent = true }) -- Hover for docs
vim.keymap.set('n', '<leader>sh', vim.lsp.buf.signature_help, { noremap = true, silent = true }) -- Show signature help
