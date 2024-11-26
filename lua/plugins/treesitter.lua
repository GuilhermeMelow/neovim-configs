require('nvim-treesitter.configs').setup {
  ensure_installed = { "javascript", "typescript", "tsx" },  -- Install JS and TS parsers
  highlight = {
    enable = true,  -- Enable syntax highlighting
  },
  indent = {
    enable = true,  -- Enable indentation based on Tree-sitter
  },
}
