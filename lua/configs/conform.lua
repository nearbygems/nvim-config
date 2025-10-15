local options = {
  formatters_by_ft = {
    -- Go
    go = { "gofmt" },

    -- Python
    python = { "black" },

    json = { "jq" },
    yaml = { "yamlfmt" },
    rust = { "rustfmt" },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format_on_save = {
    timeout_ms = 50000,
    lsp_fallback = true,
  },

}

return options
