" Basic config
set encoding=UTF-8
set clipboard=unnamedplus "copy vim clipboard to system
set wrap! "toggle word wrap
set number relativenumber "lines number

" Shortcuts
"escape shortcut
:imap jj <Esc>

" Keyboard keys config
"switch tabs 
nnoremap <C-e> :set nomore <Bar> :ls <Bar> :set more <CR>:b!<Space> moving keys in editor mode with ctrl
inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l

" Tabs (not spaces!!!)
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set shiftwidth=4    " number of spaces to use for autoindent
"set expandtab      " tabs are space
set copyindent      " copy indent from the previous line
set autoindent

" Plugins
call plug#begin()
" Utilities
Plug 'airblade/vim-gitgutter' "git changes marker
Plug 'tpope/vim-fugitive' "git wrapper
Plug 'rhysd/git-messenger.vim' "git log messenge
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']} "markdown preview

" Style
Plug 'folke/tokyonight.nvim' "theme
Plug 'romgrk/barbar.nvim' "tab-navbar
Plug 'nvim-lualine/lualine.nvim' "dock-bar
Plug 'kyazdani42/nvim-web-devicons' "icons
Plug 'vimsence/vimsence' "discord presence
call plug#end()
"plugins config
nmap <C-w> <Plug>(git-messenger) 
set updatetime=001 "git checker update time
source $HOME/.config/nvim/env/tokyonight.vim "theme
source $HOME/.config/nvim/env/discord-presence.vim "discord presence
source $HOME/.config/nvim/env/lualine.lua "dock-bar
