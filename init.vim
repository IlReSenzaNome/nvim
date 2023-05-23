" Configuration NeoVim for IlReSenzaNome encodin prepare for microcontrolator 
"  ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"   ___ _ ____      ____                      _   _
"  |_ _| |  _ \ ___/ ___|  ___ _ __  ______ _| \ | | ___  _ __ ___   ___
"   | || | |_) / _ \___ \ / _ \ '_ \|_  / _` |  \| |/ _ \| '_ ` _ \ / _ \
"   | || |  _ <  __/___) |  __/ | | |/ / (_| | |\  | (_) | | | | | |  __/
"  |___|_|_| \_\___|____/ \___|_| |_/___\__,_|_| \_|\___/|_| |_| |_|\___|
"  :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
" simbolic enlace for coc configuration nvim 
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

" :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::: 
call plug#begin ('~/AppData/Local/nvim/plugged') 
" auto-complete pairs 
Plug 'chun-yang/auto-pairs',
" Themes for nvim 
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
" Ident formater text
Plug 'Yggdroot/indentLine' 
" State Bar
Plug 'nvim-lualine/lualine.nvim'
" Gestor Archivos
Plug 'scrooloose/nerdtree'
" dev-icons
Plug 'ryanoasis/vim-devicons' 
" goyo
Plug 'junegunn/goyo.vim' 
" Git
Plug 'tpope/vim-fugitive'
" COC
" Use release branch (recommended)
Plug 'neoclide/coc.nvim', {'branch': 'release'} 
" Navigation file 
Plug 'christoomey/vim-tmux-navigator' 
" Buftabline 
Plug 'ap/vim-buftabline' 
call plug#end() 
" :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

" :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
" Theme configuration
set background=dark
colorscheme tokyonight 
colorscheme tokyonight-night

" configuration nerdtree 
let NERDTreeQuitOnOpen=1
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>

" buftabline 
set hidden
nnoremap <C-N> :bnext<CR> 
nnoremap <C-P> :bprev<CR> 

" Config lualine 
lua << END
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
  }
}
END
