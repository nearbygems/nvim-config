require("nvchad.configs.lspconfig").defaults()

local servers = {
  html = {},
  cssls = {},
  bashls = {},

  gopls = {
    settings = {
      gopls = {
        completeUnimported = true,
        usePlaceholders = true,
        analyses = {
          unusedparams = true,
        },
      },
    },
  },

  -- 🐍 Python
  pyright = {
    settings = {
      python = {
        analysis = {
          typeCheckingMode = "basic",
          autoImportCompletions = true,
          diagnosticMode = "workspace",
        },
      },
    },
  },

  rust_analyzer = {
    settings = {
      ["rust-analyzer"] = {
        cargo = {
          allFeatures = true,
        },
        check = {
          command = "clippy",
        },
        inlayHints = {
          enable = true,
          typeHints = { enable = true },
          parameterHints = { enable = true },
        },
      },
    },
  },

}

for name, opts in pairs(servers) do
  vim.lsp.config(name, opts)
  vim.lsp.enable(name)
end

-- read :h vim.lsp.config for changing options of lsp servers 

