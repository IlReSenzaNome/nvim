" Configuration NeoVim for IlReSenzaNome encodin prepare for microcontrolator 
" ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"   ___ _ ____      ____                      _   _
"  |_ _| |  _ \ ___/ ___|  ___ _ __  ______ _| \ | | ___  _ __ ___   ___
"   | || | |_) / _ \___ \ / _ \ '_ \|_  / _` |  \| |/ _ \| '_ ` _ \ / _ \
"   | || |  _ <  __/___) |  __/ | | |/ / (_| | |\  | (_) | | | | | |  __/
"  |___|_|_| \_\___|____/ \___|_| |_/___\__,_|_| \_|\___/|_| |_| |_|\___|
" ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
" ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
" ██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
" ██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
" ██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
" ██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
" ██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║ 
" ╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝ 
" ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
set number relativenumber   " Relative numbers for jumping
set nu rnu " turn hybrid line numbers on
syntax enable " Syntax color enable for more programing lenguajes 
set showcmd " Comand type  
set encoding=utf-8 " codification for using special characters
set showmatch " view start and end pais bracket  
set autoindent " autoindent always ON.
set expandtab " expand tabs
set shiftwidth=2 " spaces for autoindenting
set softtabstop=2 " remove a full pseudo-TAB when i press <BS>
set splitbelow splitright " Comand line launch for one comand 
set clipboard=unnamed " Using clipboard
set termguicolors " Acrive true color or terminar
set hidden 
" simbolic enlace for coc configuration nvim
so ~/Appdata/Local/nvim/coc.vim

let mapleader = ","

" :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
call plug#begin ('~/AppData/Local/nvim/plugged') 
" auto-complete pairs 
Plug 'jiangmiao/auto-pairs' 
" Themes for nvim 
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Ident formater text 
Plug 'lukas-reineke/indent-blankline.nvim'
" State Bar
Plug 'nvim-lualine/lualine.nvim'
" Gestor Archivos
Plug 'preservim/nerdtree' 
" Nerd Comment
Plug 'preservim/nerdcommenter'
" dev-icons
Plug 'ryanoasis/vim-devicons' 
Plug 'nvim-tree/nvim-web-devicons'
" Git-gitgutter
Plug 'airblade/vim-gitgutter'
" Navigation file 
Plug 'christoomey/vim-tmux-navigator' 
" Bufferline
Plug 'akinsho/bufferline.nvim', { 'tag': '*' }
" Markdown  
Plug 'bbrtj/vim-vorg-md'
" Floating Terminal  
Plug 'voldikss/vim-floaterm'  
" Polyglot 
Plug 'sheerun/vim-polyglot'
" Coc 
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.1' }
" or                                , { 'branch': '0.1.x' }
Plug 'nvim-treesitter/nvim-treesitter' 
" Lsp
Plug 'neovim/nvim-lspconfig'
" Toruble Errors 
Plug 'folke/trouble.nvim'
" 
call plug#end() 
" :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
 
" ::::::::::::::::::::: :::::::::::::::::::::::::::::::::::::::::::::::::::::::::
" Setid using keyboard  insert mode 
inoremap <C-H> <left>   
inoremap <C-J> <down>     
inoremap <C-K> <up>    
inoremap <C-L> <right> 
" Theme configuration   
set background=dark 
colorscheme tokyonight 
colorscheme tokyonight-night
" Lsp 
lua << END
require'lspconfig'.pyright.setup{"pyright-langserver", "--stdio"} 
require'lspconfig'.ccls.setup{"ccls"}
END

" configuration nerdtree 
let NERDTreeQuitOnOpen=1
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>

" Configuration floaterm example 
let g:floaterm_keymap_new    = '<C-T>'
let g:floaterm_keymap_prev   = '<C-A>'
let g:floaterm_keymap_next   = '<C-Q>'
let g:floaterm_keymap_toggle = '<C-W>'

" NerdComments
nnoremap <C-C> <plug>NERDCommenterToggle

" Telescope  
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Config lualine 
lua << END
-- blankline
require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}
-- bufferline
require("bufferline").setup{}
-- trouble settings
require("trouble").setup()
local actions = require("telescope.actions")
local trouble = require("trouble.providers.telescope")

local telescope = require("telescope")

telescope.setup {
  defaults = {
    mappings = {
      i = { ["<c-t>"] = trouble.open_with_trouble },
      n = { ["<c-t>"] = trouble.open_with_trouble },
    },
  },
}

require("lualine").setup {

  options = {
    theme = "tokyonight",
    icons_enabled = true,
  }, 
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "filename" },
    lualine_c = { "g:coc_status" },
    lualine_x = { "branch" },
    lualine_y = { "encoding" },
    lualine_z = { "location" }
  },
}
END
