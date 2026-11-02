return {
  appearance = { nerd_font_variant = 'normal' },
  sources = {
    default = { 'lsp', 'path', 'snippets', 'lazydev' },
    providers = { lazydev = { module = 'lazydev.integrations.blink', score_offset = 100 } },
  },
}
