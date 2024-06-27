return {
  { -- Jump anywhere in a document file.
    'smoka7/hop.nvim',
    lazy = false,
    version = '*',
    config = function()
      local hop = require 'hop'
      hop.setup()

      vim.keymap.set('n', '<leader>F', hop.hint_words)
    end,
  },
  { 'tpope/vim-fugitive' },
  {
    'folke/trouble.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {},
  },
  {
    'supermaven-inc/supermaven-nvim',
    config = function()
      require('supermaven-nvim').setup {
        keymaps = {
          accept_suggestion = '<C-k>',
        },
      }
    end,
  },
}
