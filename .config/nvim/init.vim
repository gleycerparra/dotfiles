set nocompatible
set number
syntax enable
set fileencodings=utf-8,sjis,euc-jp,latin
set encoding=utf-8
set title
set autoindent
set nobackup
set hlsearch
set showcmd
set cmdheight=1
set laststatus=2
set scrolloff=10
set expandtab
set shiftwidth=2
set mouse=a
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'
set clipboard+=unnamedplus
let g:netrw_localrmdir='rm -r'
"-- FOLDING --
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()
" Syntax theme "{{{
" ---------------------------------------------------------------------
" true color
"if exists("&termguicolors") && exists("&winblend")
"  syntax enable
"  set termguicolors
"  set winblend=0
"  set wildoptions=pum
"  set pumblend=5
"  set background=dark
"  " Use NeoSolarized
"  let g:neosolarized_termtrans=1
"  runtime ./colors/NeoSolarized.vim
"  colorscheme NeoSolarized
"endif


"}}}

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif
if has('win32')
  runtime ./windows.vim
endif

runtime ./maps.vim
"}}
" Gruvbox config
autocmd vimenter * ++nested colorscheme gruvbox
autocmd VimEnter * hi Normal ctermbg=NONE guibg=NONE

" https://github.com/morhetz/gruvbox/wiki/Terminal-specific
"
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif
"autocmd VimEnter * hi Normal ctermbg=none
"if exists("&termguicolors") && exists("&winblend")
"  
"  let g:gruvbox_transparent_bg = 1
"  let g:gruvbox_contrast_dark='soft'
"  set background=dark
"  colorscheme gruvbox
" " " Use NeoSolarized
" " let g:neosolarized_termtrans=1
" " runtime ./colors/NeoSolarized.vim
" " colorscheme NeoSolarized
"endif

lua << EOF
--vim.lsp.set_log_level("debug")
EOF

lua << EOF
local nvim_lsp = require('lspconfig')
local protocol = require'vim.lsp.protocol'

EOF
