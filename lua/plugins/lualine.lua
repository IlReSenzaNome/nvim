return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",
  dependencies = {
    "neovim/nvim-lspconfig",
  },
  init = function ()
    vim.g.lualine_laststatus = vim.o.laststatus
    vim.o.laststatus = 0
  end,
  opts = function()
    local emoji = require("nvim-web-devicons")
    vim.o.laststatus = vim.g.lualine_laststatus
    return {
      options = {
        theme = "auto",
        globalstatus = true,
        disable_filetypes = { statusline = { "startify" } },
      },
      sections = {
        lualine_a = { { "fileformat", symbols = { unix = "", dos = "", mac = "" } }, { "mode", upper = true }, },
        lualine_b = { { "branch" }, { "diagnostics", sources = { "nvim_diagnostic" }, symbols = { error = "", warn = "", info = "", hint = "" }, }, },
        lualine_c = {
          { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
          { "filename", file_status = true, path = 1, symbols = { modified = "  ", readonly = "", unnamed = "" }, },
          { icon = emoji.get_icons },
        },
        lualine_x = {
          {
            function() return require("noice").api.status.command.get() end,
            cond = function() return package.loaded["noice"] and require("noice").api.status.command.has() end,
          },
          {
            "diff",
            symbols = {
              dded = " ",
              modified = " ",
              removed = " ",
            },
          },
        },
        lualine_y = {
          { "progress", separator = " ", padding = { left = 1, right = 0 } },
          { "location", padding = { left = 0, right = 1} },
        },
        lualine_z = {
          function()
            return " " .. os.date("%R")
          end,
        },
      },
    }
  end,
}
