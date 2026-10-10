-- Markdown stays raw until explicitly toggled for the current buffer.
-- Load after the colorscheme and Markdown Tree-sitter parsers.
vim.pack.add { 'https://github.com/OXY2DEV/markview.nvim' }
require('markview').setup {
  preview = { enable = false },
}

vim.keymap.set('n', '<leader>mp', function()
  vim.cmd 'Markview toggle'
  local state = require('markview.state').get_buffer_state(vim.api.nvim_get_current_buf(), false)
  if not state then return end
  vim.wo.wrap = not state.enable
  if state.enable then vim.cmd 'Markview render' end
end, { desc = '[M]arkdown [P]review' })
