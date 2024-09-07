return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "folke/neodev.nvim",
    "williamboman/mason-lspconfig.nvim",
  },
  config = function()
    require("config.plugins.lspconfig")
    require("neodev").setup()
  end,
}

