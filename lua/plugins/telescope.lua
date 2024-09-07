return {
    'nvim-telescope/telescope.nvim',-- or                              , 
    branch = '0.1.x',
      dependencies = {
        'nvim-lua/plenary.nvim',
        {"nvim-telescope/telescope-fzf-native.nvim", build = "make"},
      },
      keys = {
        {"<leader>ff", ":Telescope find_files<cr>", desc = "Fuzzy find files in cwd" },
        {"<leader>fr", ":Telescope oldfiles<cr>", desc = "Fuzzy find recent files" },
        {"<leader>fs", ":Telescope live_grep<cr>", desc = "Find string in cwd" },
        {"<leader>fc", ":Telescope grep_string<cr>", desc = "Find string under cursor in cwd" },
      },
      config = function ()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
          defaults = {
            path_display = { "truncate" },
            mappings = {
              i = {
                ["<C-k>"] = actions.move_selection_previous,
                ["<C-j>"] = actions.move_selection_next,
                ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
              },
            },
          },
        })

        telescope.load_extension("fzf")
      end
}
