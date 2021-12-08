"-------------------------------------------------------------
"			GENERAL SETTINGS
"--------------------------------------------------------------

set expandtab
set shiftwidth=4
set hidden
" set signcolumn=yes:2
set relativenumber
set number
set termguicolors
set undofile
set spell
set title
set ignorecase
set smartcase
set wildmode=longest:full,full
set wrap
set list
set listchars=tab:▸\ ,trail:·
set mouse=a
set scrolloff=8
set sidescrolloff=8
set nojoinspaces
set splitright
set clipboard=unnamedplus
set confirm
set exrc
set backup
set showcmd
set backupdir=~/.local/share/vim/backup//
set updatetime=300 " Reduce time for highlighting other references
set redrawtime=10000 " Allow more time for loading syntax on large files


"-------------------------------------------------------------
"			KEY MAPS
"--------------------------------------------------------------

let mapleader = "\<space>"

nmap <leader>k :nohlsearch<CR>
nmap <leader>Q :bufdo bdelete<cr>

nmap <leader>b :bprev<CR>
nmap <leader>n :bnext<CR>

" Allow gf to open non-existent files
map gf :edit <cfile><cr>

" Quicker switching between windows
nmap <silent> <C-h> <C-w>h
nmap <silent> <C-j> <C-w>j
nmap <silent> <C-k> <C-w>k
nmap <silent> <C-l> <C-w>l

" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv

"-------------------------------------------------------------
"			PLUGINS
"-------------------------------------------------------------

" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')

source ~/.config/vim/plugins/vim-airline.vim
source ~/.config/vim/plugins/dracula.vim
source ~/.config/vim/plugins/vim-surround.vim
source ~/.config/vim/plugins/nerdTree.vim
source ~/.config/vim/plugins/fzf.vim
source ~/.config/vim/plugins/floatterm.vim
source ~/.config/vim/plugins/fugitive.vim
source ~/.config/vim/plugins/vimwiki.vim

call plug#end()


"-------------------------------------------------------------
"			COLORS
"-------------------------------------------------------------
color dracula
