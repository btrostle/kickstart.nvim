-- Load before UI plugins so they pick up the selected colorscheme.
vim.pack.add { 'https://github.com/sainnhe/everforest' }
vim.opt.background = 'dark'
vim.g.everforest_background = 'hard'
vim.g.everforest_disable_italic_comment = 1
vim.cmd.colorscheme 'everforest'
