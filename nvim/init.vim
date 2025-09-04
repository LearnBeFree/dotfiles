:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a

:set langmap=nh,ej,ik,ol,hn,je,ki,lo,NH,EJ,IK,OL,HN,JE,KI,LO,фq,ьw,лf,пp,гg,жe,яo,уu,ыy,аa,рr,сs,тt,дd,чn,нh,оj,иk,еl,цz,зx,кc,вv,бb,хi,мm,ФQ,ъW,ЛF,ПP,ГG,ЖE,ЯO,УU,йY,АA,РR,СS,ТT,ДD,ЧN,НH,ОJ,ИK,ЕL,ЦZ,ЗX,КC,ВV,БB,ХI,МM,

filetype plugin on
set omnifunc=syntaxcomplete#Complete

call plug#begin()

	Plug 'https://github.com/preservim/nerdtree'
	Plug 'https://github.com/tpope/vim-commentary'
	Plug 'https://github.com/ap/vim-css-color'
	Plug 'https://github.com/ryanoasis/vim-devicons'
	Plug 'https://github.com/preservim/tagbar' 
	Plug 'https://github.com/rafi/awesome-vim-colorschemes'
	Plug 'https://github.com/harrisoncramer/jump-tag'
	Plug 'arcticicestudio/nord-vim'
	Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
	Plug 'https://github.com/ramojus/mellifluous.nvim'
	Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

set encoding=UTF-8
set termguicolors

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview 

call plug#end()


nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" Find files using Telescope command-line sugar.
let mapleader = ","
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

call v:lua.require'mellifluous'.setup({'colorset': 'kanagawa_dragon'})
colorscheme mellifluous

"    mellifluous. Dark and light, original.
"    alduin. Dark, link to original.
"    mountain. Dark, link to original.
"    tender. Dark, link to original.
"    kanagawa_dragon. Dark, link to original.
"
" colorscheme catppuccin-macchiato " catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
" colorscheme mellifluous
