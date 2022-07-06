call plug#begin('C:/Users/christian.guenter/AppData/Local/nvim/plugged') 
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'szw/vim-maximizer'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'nvim-lua/plenary.nvim'
  Plug 'BurntSushi/ripgrep'
  Plug 'sharkdp/fd'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'famiu/nvim-reload'
  Plug 'tpope/vim-surround'
  Plug 'vim-airline/vim-airline'

  Plug 'neovim/nvim-lspconfig'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/cmp-path'
  Plug 'hrsh7th/cmp-cmdline'
  Plug 'hrsh7th/nvim-cmp'

  Plug 'tpope/vim-fugitive'
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'kyazdani42/nvim-tree.lua'
  Plug 'folke/zen-mode.nvim'
  Plug 'kdheepak/lazygit.nvim'

  Plug 'jiangmiao/auto-pairs' 
  Plug 'neoclide/coc.nvim', {'do' : 'yarn install --frozen-lockfile'}
  Plug 'yuezk/vim-js'
  Plug 'HerringtonDarkholme/yats.vim'
  Plug 'maxmellon/vim-jsx-pretty'
  let g:coc_global_extensions = ['coc-css', 'coc-html', 'coc-json', 'coc-prettier'] 
call plug#end()

set number relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set clipboard+=unnamedplus
set autoindent
set incsearch
set smartcase
set ignorecase
set hlsearch
set completeopt=menu,menuone
set splitright
set splitbelow
set nobackup
set nowritebackup
set signcolumn=no
set undofile
set wildmode=longest,list
set cursorline
set cursorlineopt=screenline
"set cursorcolumn

nnoremap <leader>wm :MaximizerToggle<CR>
nnoremap <leader>wn :wincmd j<CR>
nnoremap <leader>wh :wincmd h<CR>
nnoremap <leader>we :wincmd k<CR>
nnoremap <leader>wi :wincmd l<CR>

nnoremap <CR> :
vnoremap <CR> :

inoremap <C-T> <C-N>

nnoremap <C-CR> O<Esc>j
nnoremap <M-CR> o<Esc>k
nnoremap <M-V> <C-V>
nnoremap d- d$
nnoremap v- v$
nnoremap c- c$
nnoremap y- y$
nnoremap v <C-V>

nnoremap <esc> :noh<CR><esc>
vnoremap <esc> :noh<CR><esc>

nnoremap <C-C> :noh<CR><C-C>
vnoremap <C-C> :noh<CR><C-C>

"easier moving of code block,w,ws
vnoremap < <gv 
vnoremap > >gv 

" nvim tree
lua << EOF
 require("nvim-tree").setup() 
EOF

nnoremap <leader>t :NvimTreeToggle<CR>

nnoremap <silent> <leader>gg :LazyGit<CR>

" Fast search and replace
nnoremap <leader>s :%s///g<LEFT><LEFT><LEFT>
vnoremap <leader>s :s///g<LEFT><LEFT><LEFT>

let mapleader=','

map <space> <leader>

	


