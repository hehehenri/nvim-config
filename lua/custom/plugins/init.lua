return {
  { -- Jump anywhere in a document file.
    'smoka7/hop.nvim',
    lazy = false,
    version = '*',
    config = function()
      local hop = require 'hop'
      hop.setup()

      vim.keymap.set('', 'F', hop.hint_words)
    end,
  },
}
