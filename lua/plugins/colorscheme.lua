return {
	"folke/tokyonight.nvim",
	lazy = true,
    name = "tokyonight",
	priority = 1000,
    opts = {
         integrations = {
             cmp = true,
             gitsigns = true,
             indent_blankline = { enabled = true },
             lsp_trouble = true,
             mason = true,
             native_lsp = {
                 enabled = true,
                 underlines = {
                     errors = {"undercurl"},
                     hints = {"undercurl"},
                     warnings = {"undercurl"},
                     information = {"undercurl"},
                 },
             },
             noice = true,
             neotree = true,
             telescope = true,
             treesitter = true,
             which_key = true,
         },
         style = "storm",
         terminal_colors = true,
    },
    init = function()
        vim.cmd[[colorscheme tokyonight]]
    end,
}
