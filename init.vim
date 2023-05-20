" Configuracion NeoVim
set number relativenumber   " Relative numbers for jumping
set nu rnu 
syntax enable
set showcmd
set encoding=utf-8
set showmatch 
set autoindent " autoindent always ON.
set expandtab " expand tabs
set shiftwidth=2 " spaces for autoindenting
set softtabstop=2 " remove a full pseudo-TAB when i press <BS>
set splitbelow splitright 

call plug#begin ('~/AppData/Local/nvim/plugged') 

" auto-complete pairs 
Plug 'chun-yang/auto-pairs',
" Themes for nvim 
" Plug 'sainnhe/gruvbox-material'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }

" Ident formater text
Plug 'Yggdroot/indentLine' 
" State Bar
" Plug 'vim-airline/vim-airline' 
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
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Or build from source code by using yarn: https://yarnpkg.com
" Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}


call plug#end()
" Theme configuration
set background=dark
" let g:gruvbox_materia_background='medium' 
" colorscheme gruvbox-material 


" configuration airline
let g:airline#extensions#tabline#enabled = 1

" configuration nerdtree 
let NERDTreeQuitOnOpen=1
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR> 

lua << END
require('lualine').setup()
END

colorscheme tokyonight
colorscheme tokyonight-night

