local options = {
  formatters_by_ft = {
--    lua = { "stylua" },
    -- Go
    go = { "gofmt" },

    -- Python
    python = { "black" },

    -- Общие (если надо)
    json = { "jq" },
    yaml = { "yamlfmt" },
    rust = { "rustfmt" },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
