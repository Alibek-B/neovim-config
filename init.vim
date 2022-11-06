:set number
:set tabstop=2
:set softtabstop=2
:set shiftwidth=2
:set noswapfile
:set mouse=a
:set relativenumber
:set cursorcolumn
:set cursorline
:set syntax=on

call plug#begin()
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/mattn/emmet-vim'
Plug 'https://github.com/flazz/vim-colorschemes'
Plug 'https://github.com/tpope/vim-endwise'
" install icons for work plug
" https://github.com/ryanoasis/nerd-fonts#option-1-download-and-install-manually
Plug 'https://github.com/ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/neoclide/coc.nvim'
Plug 'pangloss/vim-javascript'
Plug 'https://github.com/tpope/vim-fugitive'
Plug 'https://github.com/vim-scripts/tComment'
Plug 'https://github.com/dense-analysis/ale'
Plug 'https://github.com/nvim-telescope/telescope.nvim'
Plug 'nvim-lua/plenary.nvim'
" Rails and Ruby
Plug 'https://github.com/tpope/vim-rails'
Plug 'https://github.com/skwp/vim-rspec'
Plug 'https://github.com/terryma/vim-multiple-cursors'
Plug 'https://github.com/vim-ruby/vim-ruby'
" Frontend
Plug 'https://github.com/leafOfTree/vim-vue-plugin'
call plug#end()

nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

"--EMMET CONFIG
let g:user_emmet_leader_key=','

"--Colorschemes
:colorscheme gruvbox

"--NERDTree
let NERDTreeShowHidden=1

"--auto delete space
autocmd BufWritePre * :%s/\s\+$//e

" !!! IGNORE WARNING FROM Coc !!!
let g:coc_disable_startup_warning = 1

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

let g:javascript_plugin_jsdoc = 1

" VUE.js
let g:vim_vue_plugin_config = {
      \'syntax': {
      \   'template': ['html'],
      \   'script': ['javascript'],
      \   'style': ['css'],
      \},
      \'full_syntax': [],
      \'initial_indent': [],
      \'attribute': 0,
      \'keyword': 0,
      \'foldexpr': 0,
      \'debug': 0,
      \}

" A.L.E
let g:ale_linters = {
      \   'ruby': ['rubocop'],
      \   'javascript': ['eslint'],
      \}

" Telescope
nnoremap ff <cmd>Telescope find_files<cr>
nnoremap fg <cmd>Telescope live_grep<cr>
