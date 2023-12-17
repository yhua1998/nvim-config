require 'conform'.setup {
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "black" },
  },
  format_on_save = {
    timeout_ms = 5000,
    lsp_fallback = true,
  }
}

