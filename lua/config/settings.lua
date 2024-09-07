-------------------------------------
-- NeoVim API Aliases
--------------------------------------
local cmd = vim.cmd            -- Execute Vim Comands
local exec = vim.api.nvim_exec -- Execute Vim Script
local fn = vim.fn              -- Call Vim Functions
local o = vim.o                -- 
local g = vim.g                -- Global values
local opt = vim.opt            -- General options
local au = vim.api.nvim_create_autocmd -- create autocomand
local ag = vim.api.nvim_create_augroup -- Create autogroup

--------------------------------------
-- NeoVim General config
--------------------------------------
g.mapleader = " "              -- leader to space
-- g.toogle_theme_icon = "  "
-- opt.clipboard = 'unnamedplus'  -- Copy/Paste to sytem clipboard 
opt.swapfile = false           -- Don't use swapfile

--------------------------------------
-- NeoVim Interfaces
--------------------------------------
opt.number = true              -- shows absolute line number on cursor line 
opt.relativenumber = true      -- show relative line numbers

--------------------------------------
-- Tabs, Ident
--------------------------------------
o.expandtab = true           -- Use spaces Instead of tabs
o.shiftwidth = 2             -- Shift 4 spaces when tab
o.smartindent = true         -- autoindent now lines 
o.tabstop = 2                -- 1 Tab == 4 Spaces
o.softtabstop = 2
o.autoindent = true          -- copy ident from current line when starting new one

-------------------------------------
-- Line Wrapping
-------------------------------------
opt.wrap = false               -- desable line Wrapping

-------------------------------------
-- Search Settings 
-------------------------------------
opt.ignorecase = true          -- Ignore case when searching
opt.smartcase = true           -- If you include mised case in your search, assumes you want case-sesitive

-------------------------------------
-- Appearence 
-------------------------------------
opt.termguicolors = true        -- Enable termguicolors for use tokyonight
opt.background = "dark"         -- Colorscheme that can be light or dark will be made dark


