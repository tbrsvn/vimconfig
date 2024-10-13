" Settings
" Show Line Numbers
set number relativenumber
" Wrap Text
set wrap
" Set Text Encoding
set encoding=utf-8
" Status Bar
set laststatus=2
" No Startup Text
set shortmess=I
" Show Current Command
set showcmd
" Avoid Wrapping A Line In The Middle Of A Word
set linebreak
" Make Searching Better
set hlsearch
set incsearch
vnoremap <C-c> "+y
map <C-p> "+P
" Enable Colors In The Terminal
set termguicolors
" Highlight The Line Currently Under Cursor
set cursorline
" Make Update Time Smaller
set updatetime=250
" Enable Mouse
set mouse=a
set mousehide
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
syntax enable
filetype plugin on
let g:is_posix=1
" Enable Autocompletion
set wildmode=longest,list,full
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
" Make It So When You Split It Goes To The Right
set splitbelow splitright
" Make Hopping Around Split Windows Easier
map <C-h> <cmd>wincmd h <CR>
map <C-j> <cmd>wincmd j <CR>
map <C-k> <cmd>wincmd k <CR>
map <C-l> <cmd>wincmd l <CR>
" Remap S Which Is Equal To The Command cc To A Find And Replace Function
nnoremap S :%s//replacement<Left><Left><Left><Left><Left><Left><Left><Left><Left><Left>
" Delete Whitespace On Save
autocmd BufWritePre * %s/\s\+$//e
" Setup GDB Alias
autocmd VimEnter * packadd termdebug
" Backup History
if has('win64') || has('win32') || has('win16')
  if !isdirectory('$LOCALAPPDATA\Temp\.nvim-undo-dir')
    silent! call mkdir('$LOCALAPPDATA\Temp\.nvim-undo-dir', '', 0700)
    set undodir=$LOCALAPPDATA\Temp\.nvim-undo-dir
  endif
else
  if !isdirectory('/tmp/.nvim-undo-dir')
    silent! call mkdir('/tmp/.nvim-undo-dir', '', 0700)
    set undodir=/tmp/.nvim-undo-dir
  endif
endif
set undofile
" Grab Coc Settings
if has('win64') || has('win32') || has('win16')
  if empty(glob('$LOCALAPPDATA\nvim\coc-settings.json'))
    silent ! powershell -Command '
    \   New-Item -Path ~\AppData\Local\nvim -Name autoload -Type Directory -Force;
    \   Invoke-WebRequest
    \   -Uri 'https://raw.githubusercontent.com/tbrsvn/vimconfig/main/nvim/coc-settings.json'
    \   -OutFile ~\AppData\Local\nvim\coc-settings.json
    \ '
  endif
else
  if empty(glob('~/.config/nvim/coc-settings.json'))
    silent !curl -fLo ~/.config/nvim/coc-settings.json --create-dirs
      \ https://raw.githubusercontent.com/tbrsvn/vimconfig/main/nvim/coc-settings.json
  endif
endif
" Install vim-plug if not found
if has('win64') || has('win32') || has('win16')
  if empty(glob('$LOCALAPPDATA\nvim\autoload\plug.vim'))
    silent ! powershell -Command '
    \   New-Item -Path ~\AppData\Local\nvim -Name autoload -Type Directory -Force;
    \   Invoke-WebRequest
    \   -Uri 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    \   -OutFile ~\AppData\Local\nvim\autoload\plug.vim
    \ '
  endif
else
  if empty(glob('~/.config/nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  endif
endif
" Faster Loading Of Plugins
lua vim.loader.enable()
" Plugins
call plug#begin()
" Plug 'github/copilot.vim'
  Plug 'numToStr/Comment.nvim'
  Plug 'EtiamNullam/deferred-clipboard.nvim'
  Plug 'CRAG666/code_runner.nvim'
  Plug 'tbrsvn/telescope.nvim'
  Plug 'alec-gibson/nvim-tetris'
  Plug 'HiPhish/rainbow-delimiters.nvim'
  Plug 'ThePrimeagen/vim-be-good'
  Plug 'seandewar/killersheep.nvim'
  Plug 'tpope/vim-fugitive'
  Plug 'tamton-aquib/duck.nvim'
  Plug 'chrisgrieser/nvim-genghis'
  Plug '907th/vim-auto-save'
  Plug 'mistweaverco/Screenshot.nvim'
  Plug 'yegappan/mru'
  Plug 'windwp/nvim-ts-autotag'
  Plug 'gbprod/stay-in-place.nvim'
  Plug '3rd/image.nvim'
  Plug 'mbbill/undotree'
  Plug 'tpope/vim-surround'
  Plug 'tbrsvn/minesweeper.nvim'
  Plug 'tpope/vim-commentary'
  Plug 'tbrsvn/alpha-nvim'
  Plug 'alanfortlink/blackjack.nvim'
  Plug 'tc50cal/vim-terminal'
  Plug 'NvChad/nvim-colorizer.lua'
  Plug 'jghauser/mkdir.nvim'
  Plug 'benlubas/molten-nvim', {'do': ':UpdateRemotePlugins'}
  Plug 'lewis6991/gitsigns.nvim'
  Plug 'qadzek/link.vim'
  Plug 'vimwiki/vimwiki'
  Plug 'frabjous/knap'
  Plug 'karb94/neoscroll.nvim'
  Plug 'nvim-tree/nvim-web-devicons'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'archibate/lualine-time'
  Plug 'ThePrimeagen/harpoon'
  Plug 'folke/which-key.nvim'
  Plug 'rmagatti/auto-session'
  Plug 'echasnovski/mini.nvim'
  Plug 'rcarriga/nvim-notify'
  Plug 'stevearc/dressing.nvim'
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'tbrsvn/battery.nvim'
  Plug 'akinsho/bufferline.nvim'
  Plug 'catppuccin/nvim'
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'tbrsvn/telescope.nvim'
  Plug 'fannheyward/telescope-coc.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
  Plug 'preservim/nerdtree' |
              \ Plug 'Xuyuanp/nerdtree-git-plugin'
call plug#end()
" Run PlugInstall And PlugClean If There Are Missing Plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC | PlugClean
\| endif
" Update Plugins
autocmd VimEnter * silent! UpdateRemotePlugins
" Theme
lua << EOF
require('catppuccin').setup({
    integrations = {
        nvimtree = false,
	    neotree = false,
	    alpha = true,
        cmp = true,
	    harpoon = true,
        gitsigns = true,
        treesitter = true,
	    treesitter_context = true,
	    coc_nvim = true,
	    rainbow_delimiters = true,
	    notify = true,
	    telescope = true,
	    mini = true,
	    which_key = true,
	    barbecue = {
    	    dim_dirname = true,
    	    bold_basename = true,
   	 	    dim_context = false,
    	    alt_background = false,
	    },
    }
})
EOF
lua << EOF
require('notify').setup()
vim.notify = require('notify')
EOF
colorscheme catppuccin-mocha
set background=dark
lua << EOF
local batterycolor = '#ec9ca4'
local battery = require('battery')
battery.setup({
	update_rate_seconds = 30,
	show_status_when_no_battery = true,
	show_plugged_icon = true,
	show_unplugged_icon = true,
	show_percent = true,
    vertical_icons = true,
    multiple_battery_selection = 1
})
EOF
lua << EOF
local nvimbattery = {
        function()
            return require('battery').get_status_line()
        end
}
require('lualine').setup {
    options = {
        theme = 'catppuccin',
        icons_enabled = true
    },
    extensions = {
	'nerdtree'
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_w = {'encoding', 'fileformat', 'filetype'},
        lualine_x = {'location'},
        lualine_y = {'ctime'},
        lualine_z = {nvimbattery}
  }
}
EOF
" Fireneovim
lua << EOF
vim.g.firenvim_config = {
  localSettings = {
    ['.*'] = { takeover = 'never' },
    ['https?://github\\.com/'] = { takeover = 'once' },
    ['https?://gitlab\\.com/'] = { takeover = 'once' }
  }
}
EOF
if exists('g:started_by_firenvim') && g:started_by_firenvim == 1
  set laststatus=0
  set noruler
  set shortmess=F
  let g:auto_session_enabled = v:false
else
  set title
  lua require'alpha'.setup(require'alpha.themes.dashboard'.config)
endif
" Setup The Plugins
let $LANG='en_US.UTF-8'
let NERDTreeShowHidden=1
let g:NERDTreeDirArrowExpandable='+'
let g:NERDTreeDirArrowCollapsible='~'
let g:auto_session_pre_save_cmds = ['tabdo NERDTreeClose']
let g:auto_session_post_restore_cmds = ["NERDTree | wincmd p", "tabdo if empty(getbufline(bufnr(''), 1, '$')) | bd | endif"]
let MRU_Auto_Close = 1
let MRU_Use_Current_Window = 1
lua require('neoscroll').setup()
lua require('killersheep').setup()
lua require('Comment').setup()
lua require('gitsigns').setup()
lua require('nvim-ts-autotag').setup()
lua require('colorizer').attach_to_buffer(0, { mode = 'background', css = true})
lua require('auto-session').setup( {auto_restore_enabled = false } )
let g:rainbow_active = 1
let g:coc_disable_startup_warning = 1
silent! let g:auto_save = 1
" Clipboard
lua << EOF
require('deferred-clipboard').setup {
  fallback = 'unnamedplus',
}
EOF
" Code Runner
if has('win64') || has('win32') || has('win16')
     silent execute '!cmd /c copy "' . $USERPROFILE . '\\AppData\\Local\\nvim\\rplugin.vim" "' . $USERPROFILE . '\\AppData\\Local\\nvim-data\\rplugin.vim"'
endif
if has('win64') || has('win32') || has('win16')
  lua << EOF
  require('code_runner').setup( {
    filetype = {
      python = 'python3',
      perl = 'perl',
      lua = 'lua',
      ruby = 'ruby',
      php = 'php',
      go = 'go run',
      javascript = 'node',
      java = {
        'cd $dir &&',
        'javac $fileName'
      },
      typescript = {
        'cd $dir &&',
        'tsc $fileName &&',
        'node $fileNameWithoutExt.js'
      },
      rust = {
        'cd $dir &&',
        'rustc $fileName &&',
        '$dir/$fileNameWithoutExt.exe'
      },
    },
  }
  )
EOF
else
  lua << EOF
  require('code_runner').setup( {
    filetype = {
      python = 'python3',
      go = 'go run',
      perl = 'perl',
      lua = 'lua',
      ruby = 'ruby',
      php = 'php',
      javascript = 'node',
      java = {
        'cd $dir &&',
        'javac $fileName &&',
        'java $fileNameWithoutExt'
      },
      typescript = {
        'cd $dir &&',
        'tsc $fileName &&',
        'node $fileNameWithoutExt.js'
      },
      rust = {
        'cd $dir &&',
        'rustc $fileName &&',
        '$dir/$fileNameWithoutExt'
      },
      cpp = {
        'cd $dir &&',
        'g++ $fileName &&',
        '$dir/$fileNameWithoutExt'
      },
    },
  }
  )
EOF
endif
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = { 'c', 'cpp', 'lua', 'javascript', 'go', 'html', 'typescript', 'ini', 'python', 'arduino', 'json', 'yaml', 'bash', 'dockerfile', 'markdown', 'markdown_inline', 'latex', 'xml', 'toml', 'css', 'java', 'rust', 'vim', 'vimdoc', 'query' },
  sync_install = false,
  auto_install = true,

  highlight = {
    enable = true,
    disable = function(lang, buf)
        local max_filesize = 100 * 1024
        local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
        if ok and stats and stats.size > max_filesize then
            return true
        end
    end,

    additional_vim_regex_highlighting = false,
  },
}
EOF
" Configure Plugin Keybinds
" MRU
nnoremap <leader>m :MRU<CR>
" Setup Tab Shortcuts
nnoremap <silent>    <C-t> :tabnew<CR>:NERDTreeToggle<CR>
nnoremap <silent>    <C-w> <Cmd>:q<CR>
nnoremap <silent>    <A-l> <Cmd>:tabnext<CR>
nnoremap <silent>    <A-h> <Cmd>:tabprevious<CR>
" Undo Tree
nnoremap <leader>ut :UndotreeToggle<CR>
" Harpoon
nnoremap <leader>a :lua require('harpoon.mark').add_file() <CR>
nnoremap <leader>h :lua require('harpoon.ui').toggle_quick_menu() <CR>
" Molten
lua << EOF
vim.keymap.set("n", "<localleader>mi", ":MoltenInit python3<CR>",
    { silent = true, desc = "Initialize the plugin" })
vim.keymap.set("n", "<localleader>e", ":MoltenEvaluateOperator<CR>",
    { silent = true, desc = "run operator selection" })
vim.keymap.set("n", "<localleader>rl", ":MoltenEvaluateLine<CR>",
    { silent = true, desc = "evaluate line" })
vim.keymap.set("n", "<localleader>rr", ":MoltenReevaluateCell<CR>",
    { silent = true, desc = "re-evaluate cell" })
vim.keymap.set("v", "<localleader>r", ":<C-u>MoltenEvaluateVisual<CR>gv",
    { silent = true, desc = "evaluate visual selection" })
EOF
let g:molten_auto_image_popup = 1
let g:molten_auto_open_html_in_browser = 1
let g:molten_auto_open_output = 1
" Knap And Markdown Preview
if has('win64') || has('win32') || has('win16')
  nmap <F5> <Plug>MarkdownPreview
  nmap <F6> <Plug>MarkdownPreviewStop
  nmap <F7> <Plug>MarkdownPreviewToggle
else
  " F5 processes the document once, and refreshes the view
  inoremap <silent> <F5> <C-o>:lua require('knap').process_once()<CR>
  vnoremap <silent> <F5> <C-c>:lua require('knap').process_once()<CR>
  nnoremap <silent> <F5> :lua require('knap').process_once()<CR>
  " F6 closes the viewer application, and allows settings to be reset
  inoremap <silent> <F6> <C-o>:lua require('knap').close_viewer()<CR>
  vnoremap <silent> <F6> <C-c>:lua require('knap').close_viewer()<CR>
  nnoremap <silent> <F6> :lua require('knap').close_viewer()<CR>
  " F7 toggles the auto-processing on and off
  inoremap <silent> <F7> <C-o>:lua require('knap').toggle_autopreviewing()<CR>
  vnoremap <silent> <F7> <C-c>:lua require('knap').toggle_autopreviewing()<CR>
  nnoremap <silent> <F7> :lua require('knap').toggle_autopreviewing()<CR>
  " F8 invokes a SyncTeX forward search, or similar, where appropriate
  inoremap <silent> <F8> <C-o>:lua require('knap').forward_jump()<CR>
  vnoremap <silent> <F8> <C-c>:lua require('knap').forward_jump()<CR>
  nnoremap <silent> <F8> :lua require('knap').forward_jump()<CR>
endif
" Nerdtree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-e> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Telescope
lua << EOF
require("telescope").setup({
  extensions = {
    coc = {
        prefer_locations = true,
        push_cursor_on_edit = true,
        timeout = 3000,
    }
  },
})
require('telescope').load_extension('harpoon')
require('telescope').load_extension('coc')
EOF
nnoremap <leader>ff <cmd>Telescope find_files<CR>
nnoremap <leader>fg <cmd>Telescope live_grep<CR>
nnoremap <leader>fb <cmd>Telescope buffers<CR>
nnoremap <leader>fh <cmd>Telescope help_tags<CR>
" Coc
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <Tab>
  \ coc#pum#visible() ? coc#pum#next(1) :
  \ CheckBackspace() ? '<Tab>' :
  \ coc#refresh()
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <leader>o <cmd>CocOutline<CR>
if has('patch-8.1.1564')
  set signcolumn=number
else
  set signcolumn=no
endif
let g:coc_global_extensions = ['coc-pairs', 'coc-json', 'coc-tsserver', 'coc-html', 'coc-markdownlint', 'coc-docker', 'coc-sh', 'coc-snippets', 'coc-rust-analyzer', 'coc-go', 'coc-css', 'coc-cssmodules', 'coc-r-lsp', 'coc-discord', 'coc-clangd', 'coc-python', 'coc-java', 'coc-texlab', 'coc-xml', 'coc-yaml']

" --- Notes About Installing Plugins ---
" :PlugInstall :PlugClean :UpdateRemotePlugins
" :CocInstall coc-pairs coc-json coc-tsserver coc-html coc-docker coc-markdownlint coc-sh coc-rust-analyzer coc-go coc-snippets coc-css coc-cssmodules coc-discord coc-clangd coc-python coc-java coc-r-lsp coc-texlab coc-xml coc-yaml
