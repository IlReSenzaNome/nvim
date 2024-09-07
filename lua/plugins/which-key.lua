return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  lazy = true, 
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    local wk = require("which-key")
        wk.register({
          ["<leader>g"] = { name = " Git"},
          ["<leader>o"] = { name = "Open"},
          ["<leader>f"] = { name = "Telescope"},
    })
  end,
  opts = {
    mode = "n",
    prefix = "",
    buffer = nil,
    silent = true,
    noremap = true,
    nowait = false,
    expr = false,
  },
  icons = {
      breadcrumb = "»", -- symbol used in the command line area that shows your active key combo
      separator = "➜", -- symbol used between a key and it's label
      groups = "",
  }

}
