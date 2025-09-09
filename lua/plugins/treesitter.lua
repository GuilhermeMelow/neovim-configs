require('nvim-treesitter.configs').setup {
  ensure_installed = { "javascript", "typescript", "tsx", "prisma", "html", "css" },  -- Install JS and TS parsers
  highlight = {
    enable = true,  -- Enable syntax highlighting
  },
  autotag = true,
  indent = {
    enable = true,  -- Enable indentation based on Tree-sitter
  },
}

require('nvim-ts-autotag').setup({
  opts = {
    -- Defaults
    enable_close = true, -- Auto close tags
    enable_rename = true, -- Auto rename pairs of tags
    enable_close_on_slash = false -- Auto close on trailing </
  },
  -- Also override individual filetype configs, these take priority.
  -- Empty by default, useful if one of the "opts" global settings
  -- doesn't work well in a specific filetype
})
