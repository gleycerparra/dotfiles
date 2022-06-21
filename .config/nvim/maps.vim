" Maps
let mapleader = "'"
nnoremap <silent> <leader>f :FZF<cr>
nnoremap <silent> <leader>F :FZF ~<cr>
nnoremap <C-p> :GFiles<Cr>
inoremap jk <ESC>
nnoremap <C-g> :Ag<Cr>
nnoremap <C-b> :Buffers<CR>
" Expand opening-brace followed by ENTER to a block and place cursor inside
inoremap {<CR> {<CR>}<Esc>O

" Auto-insert closing parenthesis/brace
inoremap ( ()<Left>
inoremap { {}<Left>

" Skip over closing parenthesis/brace
inoremap <expr> ) getline('.')[col('.')-1] == ")" ? "\<Right>" : ")"
inoremap <expr> } getline('.')[col('.')-1] == "}" ? "\<Right>" : "}"

" Buffer move
map bn :bn<cr>
map bp :bp<cr>
map bd :bd<cr>
" Nvim-Tree
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
" More available functions:
" NvimTreeOpen
" NvimTreeClose
" NvimTreeFocus
" NvimTreeFindFileToggle
" NvimTreeResize
" NvimTreeCollapse
" NvimTreeCollapseKeepBuffers

set termguicolors " this variable must be enabled for colors to be applied properly

" a list of groups can be found at `:help nvim_tree_highlight`
highlight NvimTreeFolderIcon guibg=blue
