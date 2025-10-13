return {
  {
    "stevearc/conform.nvim",
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  
  {
    "mfussenegger/nvim-dap",
    event = "BufReadPre",
  },

  {
    "leoluz/nvim-dap-go",
    requires = { "mfussenegger/nvim-dap" },
    ft = { "go" },
    config = function()
      require("configs.dap")
      local dapgo = require("dap-go")
      dapgo.setup()
    end,
  }

}
