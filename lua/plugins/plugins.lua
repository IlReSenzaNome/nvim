return {
  {
    "numToStr/Comment.nvim",
    keys = {
      { "gcc", mode = "n", desc = "Comment toggle current line"},
      { "gc", mode = { "n", "o"}, desc = "Comment toggle linewise"},
      { "gc", mode = "x", desc = "Comment toggle linewise (visual)"},
      { "gbc", mode = "n", desc = "Comment toggle current block"},
      { "gb", mode = { "n", "o"}, desc = "Comment toggle blockwise"},
      { "gb", mode = "x", desc = "Comment toggle blockwise (visual)"},
    },
    config = function (_, opts)
      require("Comment").setup(opts)
    end,
  },
  {
    "stevearc/conform.nvim",
    config = function()
      require "config.plugins.conform"
    end,
  },
  {
    "windwp/nvim-autopairs",
    opts = {
      fast_wrap = {},
      disable_filetype = { "TelescopePrompt", "vim" },
    },
  },
  {
    "brenoprata10/nvim-highlight-colors",
    event={ "BufReadPre", "BufNewFile"},
    config = function ()
      require("nvim-highlight-colors").setup({
        render = "background",
        enable_named_colors = true,
        enable_tailwind = false,
      })
    end
  },
  {
    "folke/zen-mode.nvim",
    dependencies = {
      "folke/twilight.nvim",
    } ,
    opts = {},
  },
  {
    "mvllow/modes.nvim",
    version = "^0.2",
    event = "VeryLazy",
    opts = {},
  },
  {
    "stevearc/dressing.nvim",
    config = true,
  },
  {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
    }
  end,
  },
  {
    'tribela/vim-transparent'
  },
}
