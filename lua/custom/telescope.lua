-- Telescope picker overrides, passed to require('telescope').setup in init.lua.
-- See `:help telescope.builtin` for per-picker options.
return {
  -- Show dotfiles and gitignored files, but skip the .git directory itself
  find_files = {
    hidden = true,
    no_ignore = true,
    file_ignore_patterns = { '^%.git/', '/%.git/' },
  },
}
