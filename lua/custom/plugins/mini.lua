return {
  -- This is a Neovim plugin that provides a file explorer with a column view, inspired by Miller columns.
  -- It allows users to navigate and manipulate the file system by editing a text buffer, similar to the oil.nvim plugin.
  {
    'echasnovski/mini.files',
    config = function()
      local MiniFiles = require 'mini.files'
      MiniFiles.setup {
        mappings = {
          go_in = '<CR>', -- Map both Enter and L to enter directories or open files
          go_in_plus = 'L',
          go_out = '-',
          go_out_plus = 'H',
        },
      }
      vim.keymap.set('n', '<leader>ee', '<cmd>lua MiniFiles.open()<CR>', { desc = 'Toggle mini file explorer' }) -- toggle file explorer
      vim.keymap.set('n', '<leader>ef', function()
        MiniFiles.open(vim.api.nvim_buf_get_name(0), false)
        MiniFiles.reveal_cwd()
      end, { desc = 'Toggle into currently opened file' })
    end,
  },
  -- is a Neovim plugin for splitting and joining text. It intelligently handles common patterns like lists, function arguments, and table entries,
  -- transforming single lines into multi-line formats and vice-versa. It's part of the mini.nvim library and aims for efficient code reformatting.
  {
    'echasnovski/mini.splitjoin',
    config = function()
      local miniSplitJoin = require 'mini.splitjoin'
      miniSplitJoin.setup {
        mappings = { toggle = '' }, -- Disable default mapping
      }
      vim.keymap.set({ 'n', 'x' }, '<leader>esj', function()
        miniSplitJoin.toggle()
      end, { desc = 'Toggle Join / Split arguments' })
    end,
  },
}
