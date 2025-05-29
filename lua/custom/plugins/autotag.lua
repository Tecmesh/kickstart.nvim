return {
  'windwp/nvim-ts-autotag',
  ft = { 'html', 'xml', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'svelte' },
  opts = { -- <--- Place your configuration directly inside 'opts'
    enable_close = true, -- Auto-close tags
    enable_rename = true, -- Auto-rename pairs
    enable_close_on_slash = false, -- Disable auto-close on trailing `</`
    per_filetype = {
      ['html'] = {
        enable_close = true, -- Disable auto-closing for HTML
      },
      ['typescriptreact'] = {
        enable_close = true, -- Explicitly enable auto-closing (optional, defaults to `true`)
      },
    },
  },
  -- The 'config' function is generally used for more complex setups or when you need to call 'require'
  -- inside the config. For simple 'opts' tables, lazy.nvim handles it automatically.
  -- config = function()
  --   -- local autotag = require 'nvim-ts-autotag' -- Not needed here if using 'opts'
  --   -- autotag.setup(opts) -- lazy.nvim does this for you
  -- end,
}
