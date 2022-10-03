:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set smarttab
:set softtabstop=4
:set mouse=a
:set clipboard=unnamed

call plug#begin()

Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/junegunn/fzf.vim' " navigate through Files
Plug 'https://github.com/junegunn/fzf' " navigate through Files
Plug 'https://github.com/airblade/vim-gitgutter' " git gutter
Plug 'https://github.com/ThePrimeagen/vim-be-good'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-fugitive'  " git fugative
Plug 'https://github.com/github/copilot.vim' " Github Copilot 
Plug 'kyazdani42/nvim-web-devicons' " Icons for tabline
Plug 'romgrk/barbar.nvim' " Tabline

call plug#end()

set encoding=UTF-8
" nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-l> :call CocActionAsync('jumpDefinition')<CR>

nmap <F8> :TagbarToggle<CR>

:set completeopt-=preview " For No Previews

:colorscheme focuspoint

let g:airline_powerline_fonts = 1

"let g:NERDTreeDirArrowExpandable="+"
"let g:NERDTreeDirArrowCollapsible="~"

" --- Just Some Notes ---
" :PlugClean :PlugInstall :UpdateRemotePlugins
"
" :CocInstall coc-python
" :CocInstall coc-clangd
" :CocInstall coc-snippets
" :CocCommand snippets.edit... FOR EACH FILE TYPE
" :CocInstall coc-tsserver
" :CocInstall coc-json
" :CocInstall coc-eslint

" inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nnoremap <C-b> :ls<CR>:b<Space>
noremap <C-p> :Files<CR>

" Remap gd to have a nice go to definition
nmap gd <Plug>(coc-definition)

inoremap <silent><expr> <tab> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<TAB>"


" Navigate through files in a buffer
nnoremap <C-]> :bn<CR>
nnoremap <C-[> :bp<CR>

