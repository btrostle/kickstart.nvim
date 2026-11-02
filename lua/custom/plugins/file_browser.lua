vim.pack.add {
  'https://github.com/nvim-telescope/telescope-file-browser.nvim',
  'https://github.com/nvim-tree/nvim-web-devicons',
}
pcall(require('telescope').load_extension, 'file_browser')
vim.keymap.set('n', '<leader>fb', function()
  require('telescope').extensions.file_browser.file_browser {
    path = vim.fn.expand '%:p:h',
    hidden = true,
    grouped = true,
    respect_gitignore = false,
  }
end, { desc = '[F]ile [B]rowser' })
