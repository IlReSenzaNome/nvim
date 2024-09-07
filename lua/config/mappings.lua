--------------------------------
-- NeoVim Aliases
----------------------------------
-- local map = vim.api.nvim_set_keymap
local map = vim.keymap.set
local default_opts = { noremap = true, silent = true }
-- -----------------------------------
-- NeoVim Mapings Key
-------------------------------------
-- Disable Arrow Keys
-----------------------------------
map("", "<up>", "<nop>", { noremap = true })
map("", "<down>", "<nop>", { noremap = true })
map("", "<left>", "<nop>", { noremap = true })
map("", "<right>", "<nop>", { noremap = true })
-------------------------------------
-- User mode movement
-------------------------------------
map("i", "<C-b>", "<ESC>^1", { desc = "Move Beginnig of line"})
map("i", "<C-e>", "<End>", { desc = "Move End of line"})
map("i", "<C-h>", "<left>", { desc = "Move left"})
map("i", "<C-l>", "<right>", { desc = "Move right"})
map("i", "<C-j>", "<down>", { desc = "Move down"})
map("i", "<C-k>", "<up>", { desc = "Move up"})

map("n", "<C-h>", "<C-w>h", { desc = "Switch Window left" })
map("n", "<C-l>", "<C-w>l", { desc = "Switch Window right" })
map("n", "<C-j>", "<C-w>j", { desc = "Switch Window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Switch Window up" })

map("n", "<C-s>", "<cmd>w<CR>", { desc = "File Save"})
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "File Copy whole"})
map("n", "<C-q>", "<cmd>wq!<CR>", { desc = "Save and close folder"})

map("i", "jk", "<ESC>")
map("n", ";", ":", { desc = "CMD enter command mode" })
-------------------------------------
-- tabufline
-------------------------------------
map("n", "<Tab>", "<cmd>BufferLineCycleNext<cr>", { desc = "Next Buffer"})
map("n", "<S-tab>", "<cmd>BufferLineCyclePrev<cr>", { desc = " Prev Buffer"})
map("n", "<leader>bd", "<cmd>bdelete<cr>", { desc = "Close buffer"})
-------------------------------------
-- nvim-tree
-------------------------------------
map("n", "<C-n>", "<cmd>Neotree action=close source=filesystem position=right<CR>", { desc = "Nvimtree Toggle window"})
map("n", "<leader>e", "<cmd>Neotree source=filesystem reveal=true position=right<CR>", { desc = "Nivmtree Focus Window"})
-------------------------------------
-- Comments
-------------------------------------
map("n", "<leader>/", function ()
  require("Comment.api").toggle.linewise.current()
end, {desc = "Comment Toggle"})

map(
  "v",
  "<leader>/",
  "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>",
  {desc = "Comment Toggle"}
)

-------------------------------------
-- Lazy
-------------------------------------
map("n", "<leader>l", "<cmd>Lazy<cr>", { desc = "Open lazy"})
-------------------------------------
-- Open plugins
-------------------------------------
map("n", "<leader>oz", "<cmd>ZenMode<cr>", { desc = "Open ZenMode"})
-------------------------------------
-- Reload configuration without restart nvim
-------------------------------------
map("n", "<F5>", ":so %<cr>", {desc = "Reload configuration"})
-------------------------------------
-- whichkey
-------------------------------------
map("n", "<leader>wK", "<cmd>WhichKey <CR>", { desc = "Whichkey all keymaps"})
map("n", "<leader>wk", function()
  vim.cmd("WhichKey " .. vim.fn.input "WhichKey: ")
end, { desc = "Whichkey query lookup"})
-------------------------------------
-- blankline
-------------------------------------
map("n", "<leader>cc", function ()
  local config = { scope = {} }
  config.scope.exclude = { language = {}, node_type = {} }
  config.scope.include = { node_type = {} }
  local node = require("ibl.scope").get(vim.api.nvim_get_current_buf(), config)
  if node then
    local start_row, _, end_row, _ = node:range()
    if start_row ~= end_row then
      vim.api.nvim_win_set_cursor(vim.api.nvim_get_current_win(), { start_row + 1, 0})
      vim.api.nvim_feedkeys("_", "n", true)
    end
  end
end, { desc = "Blankline Jump to current context" })
