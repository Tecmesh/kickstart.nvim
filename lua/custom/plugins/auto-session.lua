return {
  'rmagatti/auto-session',
  config = function()
    local auto_session = require 'auto-session'

    auto_session.setup {
      log_level = 'error',
      auto_session_enable_last_session = false, -- Auto restore last session
      auto_session_root_dir = vim.fn.stdpath 'data' .. '/sessions/',
      auto_session_enabled = true,
      auto_save_enabled = true, -- Auto save sessions
      auto_restore_enabled = true, -- Auto restore sessions
      auto_session_suppress_dirs = { '~/', '/' },
      auto_session_use_git_branch = false,
    }

    local keymap = vim.keymap
    keymap.set('n', '<leader>wr', '<cmd>SessionRestore<CR>', { desc = 'Restore session for cwd' }) -- restore last workspace session for current directory
    keymap.set('n', '<leader>ws', '<cmd>SessionSave<CR>', { desc = 'Save session for auto session root dir' }) -- save workspace session for current working directory
  end,
}
