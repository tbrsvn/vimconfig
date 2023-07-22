" Settings
" Show Line Numbers
set number relativenumber
" Wrap Text
set wrap
" Set Text Encoding
set encoding=utf-8
" Status Bar
set laststatus=2
" Show Current Command
set showcmd
" Avoid Wrapping A Line In The Middle Of A Word
set linebreak
" Make Searching Better
set hlsearch
set incsearch
" Clipboard
set clipboard=unnamedplus
vnoremap <C-c> "+y
map <C-p> "+P
" Enable Colors In The Terminal
set termguicolors
" Highlight The Line Currently Under Cursor
set cursorline
" Update Plugins
autocmd VimEnter * UpdateRemotePlugins
" Enable Mouse
set mouse=a
" Show The File Currently Being Edited
set title
" Confirm You Want To Close Unsaved File
set confirm
" Enable Spellchecking
set spell
" Set History Higher
set history=10000
" Hide Tilde's
set fillchars=eob:\ 
" Tabs
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
" Make Vim Act Normal In Windows
set nocompatible
" Turn On Syntax
syntax on
" Enable Autocompletion
set wildmode=longest,list,full
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Make It So When You Split It Goes To The Right
set splitbelow splitright
" Make Hopping Around Split Windows Easier
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" Remap S Which Is Equal To The Command cc To A Find And Replace Function
nnoremap S :%s//g<Left><Left>
" Delete Whitespace On Save
autocmd BufWritePre * %s/\s\+$//e
" Plugins
call plug#begin()
  Plug 'feline-nvim/feline.nvim'
  Plug 'numToStr/Comment.nvim'
  Plug 'CRAG666/code_runner.nvim'
  Plug 'alec-gibson/nvim-tetris'
  Plug 'ThePrimeagen/vim-be-good'
  Plug 'seandewar/killersheep.nvim'
  Plug 'tpope/vim-fugitive'
  Plug 'catppuccin/nvim'
  Plug 'tpope/vim-surround'
  Plug 'tpope/vim-commentary'
  Plug 'alanfortlink/blackjack.nvim'
  Plug 'tc50cal/vim-terminal'
  Plug 'NvChad/nvim-colorizer.lua'
  Plug 'jghauser/mkdir.nvim'
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'frabjous/knap'
  Plug 'karb94/neoscroll.nvim'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.2' }
  Plug 'preservim/nerdtree' |
              \ Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()
" Install vim-plug if not found
if has("win64") || has("win32") || has("win16")
  if empty(glob('C:\Users\nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
  if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif
" Run PlugInstall and PlugClean if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC | PlugClean
\| endif
" Setup The Plugins
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
autocmd VimEnter * NERDTree | wincmd p
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
lua require('feline').setup()
lua require('killersheep').setup()
lua require('code_runner').setup()
lua require('Comment').setup()
lua require('neoscroll').setup()
lua require('gitsigns').setup()
lua require("colorizer").attach_to_buffer(0, { mode = "background", css = true})
let g:coc_disable_startup_warning = 1
" Theme
colorscheme catppuccin-mocha
set background=dark
" Config Plugin Shortcuts
" Knap
" F5 processes the document once, and refreshes the view "
inoremap <silent> <F5> <C-o>:lua require("knap").process_once()<CR>
vnoremap <silent> <F5> <C-c>:lua require("knap").process_once()<CR>
nnoremap <silent> <F5> :lua require("knap").process_once()<CR>
" F6 closes the viewer application, and allows settings to be reset "
inoremap <silent> <F6> <C-o>:lua require("knap").close_viewer()<CR>
vnoremap <silent> <F6> <C-c>:lua require("knap").close_viewer()<CR>
nnoremap <silent> <F6> :lua require("knap").close_viewer()<CR>
" F7 toggles the auto-processing on and off "
inoremap <silent> <F7> <C-o>:lua require("knap").toggle_autopreviewing()<CR>
vnoremap <silent> <F7> <C-c>:lua require("knap").toggle_autopreviewing()<CR>
nnoremap <silent> <F7> :lua require("knap").toggle_autopreviewing()<CR>
" F8 invokes a SyncTeX forward search, or similar, where appropriate "
inoremap <silent> <F8> <C-o>:lua require("knap").forward_jump()<CR>
vnoremap <silent> <F8> <C-c>:lua require("knap").forward_jump()<CR>
nnoremap <silent> <F8> :lua require("knap").forward_jump()<CR>
" Nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" Coc
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
if has("patch-8.1.1564")
  set signcolumn=number
else
  set signcolumn=no
endif
let g:coc_global_extensions = ['coc-json', 'coc-tsserver', 'coc-html', 'coc-snippets', 'coc-css', 'coc-cssmodules', 'coc-discord', 'coc-clangd', 'coc-python', 'coc-java', 'coc-texlab', 'coc-xml', 'coc-yaml']

" --- Just Some Notes About Installing Plugins ---
" :PlugInstall :PlugClean :UpdateRemotePlugins
" :CocInstall coc-json coc-tsserver coc-html coc-snippets coc-css coc-cssmodules coc-discord coc-clangd coc-python coc-java coc-texlab coc-xml coc-yaml
