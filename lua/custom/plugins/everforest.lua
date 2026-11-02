vim.pack.add { 'https://github.com/neanias/everforest-nvim' }
require('everforest').setup {
  background = 'hard',
  styles = { comments = { italic = false } },
}
vim.o.background = 'dark'
vim.cmd.colorscheme 'everforest'
