call plug#begin(stdpath('data') . '/plugged')

Plug 'tpope/vim-fugitive'
Plug 'neovim/nvim-lspconfig'
Plug 'tami5/lspsaga.nvim'
Plug 'williamboman/nvim-lsp-installer'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" status line
Plug 'hoob3rt/lualine.nvim'
" main one
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
" 9000+ Snippets
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}

" lua & third party sources -- See https://github.com/ms-jpq/coq.thirdparty
" Need to **configure separately**

Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
" - shell repl
" - nvim lua api
" - scientific calculator
" - comment banner
" - etc
Plug 'vim-test/vim-test'
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

Plug 'morhetz/gruvbox'
call plug#end()
