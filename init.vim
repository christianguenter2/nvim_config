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
  Plug 'kien/ctrlp.vim'

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
  Plug 'airblade/vim-gitgutter'
  Plug 'easymotion/vim-easymotion'

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
set signcolumn=no
set textwidth=0
set nowrap

nnoremap <leader>wm :MaximizerToggle<CR>

nnoremap <leader>wn :wincmd j<CR>
nnoremap <leader>wh :wincmd h<CR>
nnoremap <leader>we :wincmd k<CR>
nnoremap <leader>wi :wincmd l<CR>

nnoremap <leader>wN :wincmd J<CR>
nnoremap <leader>wE :wincmd K<CR>
nnoremap <leader>wH :wincmd H<CR>
nnoremap <leader>wI :wincmd L<CR>

nnoremap <leader>ww :w!<CR>
nnoremap <leader>W :w!<CR>

vnoremap <leader>ww :w!<CR>
vnoremap <leader>W :w!<CR>

nnoremap <CR> :
vnoremap <CR> :

inoremap <C-T> <C-N>

" Goto last change
nnoremap <leader>g g,

nnoremap <C-CR> O<Esc>j
nnoremap <M-CR> o<Esc>k
nnoremap <M-V> <C-V>
nnoremap d- d$
nnoremap v- v$
nnoremap c- c$
nnoremap y- y$
nnoremap v <C-V>
nnoremap <leader>q :q<CR>

nnoremap <esc> :noh<CR><esc>
vnoremap <esc> :noh<CR><esc>

nnoremap <C-C> :noh<CR><C-C>
vnoremap <C-C> :noh<CR><C-C>

nnoremap <leader>/ ^
vnoremap <leader>/ ^
nnoremap <leader>- $
vnoremap <leader>- $

"easier moving of code block,w,ws
vnoremap < <gv 
vnoremap > >gv 

" paste from yank register
nnoremap <leader>p "0p
nnoremap <leader>P "0P

vnoremap <leader>p "0p
vnoremap <leader>P "0P

nnoremap U <C-R>
vnoremap U <C-R>

nnoremap Y y$

" nvim tree
lua << EOF
 require("nvim-tree").setup() 
EOF

nnoremap <leader>t :NvimTreeToggle<CR>
nnoremap <leader>T :vs<CR>:terminal<CR>

nnoremap <silent> <leader>gg :LazyGit<CR>

" Fast search and replace
nnoremap <leader>s :%s///g<LEFT><LEFT><LEFT>
vnoremap <leader>s :s///g<LEFT><LEFT><LEFT>

" Easymotion
" <Leader>f{char} to move to {char}
map  <leader>f <Plug>(easymotion-bd-f)
nmap <leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)
nmap S <Plug>(easymotion-overwin-f)

hi link EasyMotionTarget ErrorMsg
hi link EasyMotionShade  Comment
hi link EasyMotionTarget2First MatchParen
hi link EasyMotionTarget2Second MatchParen

let mapleader=','

map <space> <leader>

	


