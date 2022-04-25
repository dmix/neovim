--------------------------------------------------------------------------------

-- Neovim Config
--------------------------------------------------------------------------------

require('plugins')
require('plugins-config')

-- Set up python:
--   brew install pyenv pyenv-virtualenv
--   pyenv install 3.6.1
--   pyenv virtualenv 3.6.1 neovim3
--   pyenv activate neovim3
--   pip install neovim

local vimp = require('vimp')
local cmd = vim.cmd
local g = vim.g
local opt = vim.o
local b = vim.b

-- Settings
--------------------------------------------------------------------------------
g.mapleader = ' '
opt.wrap = false
opt.clipboard = 'unnamedplus'
opt.spell = false
cmd('filetype off')

opt.backspace = 'indent,eol,start'
opt.nrformats = 'octal' -- was equals neg
opt.listchars = 'tab:→\\ ,eol:↵,trail:·,extends:↷,precedes:↶'
opt.fillchars = 'vert:│,fold:·'

-- Having longer updatetime (default is 4000 ms = 4 s) leads to delays
opt.updatetime = 300

opt.laststatus = 0 -- hide statusline
opt.cursorline= true
-- hide cmd
opt.showcmd = false

-- indent
opt.autoindent= true
opt.smartindent= true
opt.cindent = 1

-- show wildmenu
opt.wildmenu= true

-- do not break words.
opt.linebreak= true

-- Enable line number
opt.number = 1

-- Automatically read a file changed outside of vim
opt.autoread= true

opt.backup= true
opt.undofile = 1
opt.undolevels = 1000
g.data_dir = os.getenv('HOME') .. '/.cache/vim/'
g.backup_dir = os.getenv('HOME') .. '/.cache/vim/backup'
g.swap_dir = os.getenv('HOME') .. '/.cache/vim/swap'
g.undo_dir = os.getenv('HOME') .. '/.cache/vim/undofile'
g.conf_dir = os.getenv('HOME') .. '/.cache/vim/conf'

-- if vimp.finddir(vim.g.data_dir) == "" then
--   cmd("silent call mkdir(vim.g.data_dir, 'p', 0700)")
-- end
-- if vimp.finddir(vim.g.backup_dir) == '' then
--   cmd("silent call mkdir(vim.g.backup_dir, 'p', 0700)")
-- end
-- if vimp.finddir(vim.g.swap_dir) == '' then
--   cmd("silent call mkdir(vim.g.swap_dir, 'p', 0700)")
-- end
-- if vimp.finddir(vim.g.undo_dir) == '' then
--   cmd("silent call mkdir(vim.g.undo_dir, 'p', 0700)")
-- end
-- if vimp.finddir(vim.g.conf_dir) == '' then
--   cmd("silent call mkdir(vim.g.conf_dir, 'p', 0700)")
-- end
opt.undodir = os.getenv('HOME') .. '/.cache/vim/undofile'
opt.backupdir = os.getenv('HOME') .. '/.cache/vim/backup'
opt.directory = os.getenv('HOME') .. '/.cache/vim/swap'

opt.backup = false
opt.swapfile = false

opt.writebackup = false
opt.matchtime= false
opt.ruler= true
opt.showmatch= true
opt.showmode= true

-- disable preview scratch window,
opt.completeopt = 'menu,menuone,longest'
opt.complete = '.,w,b,u,t'

-- limit completion menu height
opt.pumheight = 15
opt.scrolloff= true
opt.sidescrolloff = 5
-- o.display+=lastline
opt.incsearch= true
opt.hlsearch= true
opt.wildignorecase= true
opt.mouse = 'nv'
opt.hidden= true
opt.ttimeout= true
opt.ttimeoutlen = 50
-- o.shortmess +=A

-- Use experimental filetype.lua
g.do_filetype_lua= true
g.did_load_filetypes = false

-- Python
--------------------------------------------------------------------------------
-- pyenv which python  # Note the path
g.python_host_prog = '/opt/homebrew/opt/python@3.9/libexec/bin/python'
g.python3_host_prog = '/opt/homebrew/opt/python@3.9/libexec/bin/python'

-- Autocmds
--------------------------------------------------------------------------------

cmd('au BufWritePost init.vim,keybindings.vim,plugins.vim so $MYVIMRC')

cmd('autocmd BufNewFile,BufRead *.alias o.syntax=zsh')
cmd('autocmd BufNewFile,BufRead *.html.eex o.syntax=elixir')
cmd('autocmd BufNewFile,BufRead *.html.eex o.syntax=eelixir')
cmd('autocmd BufNewFile,BufRead *.md o.wrap ft=tasks')

cmd('autocmd FileType c,cpp,java,php,ruby,json,yaml,toml,javascript,html,css,scss,elixir,markdown,jinja,jinja.html autocmd BufWritePre <buffer> %s/\\s\\+$//e')
cmd('autocmd FileType vue autocmd BufWritePre <buffer> :call PreciseTrimWhiteSpace()')
cmd('autocmd FileType vue syntax sync fromstart')
cmd('autocmd FileType javascript,go,eelixir,make,erlang,html,eruby,vue,scss,sass,css call g:CustomFormatting()')

cmd('autocmd FileType yaml,haskell,go,eelixir,vim,zsh,rust,javascript,vue,html,eelixir,typescript,json set tabstop=4 shiftwidth=4 expandtab')
cmd('autocmd FileType make,erlang setlocal noexpandtab')
cmd('autocmd FileType lua,eruby,sass,scss,css set shiftwidth=2 expandtab')

cmd('autocmd FileType go autocmd BufWritePre <buffer> GoFmt')
cmd('autocmd FileType * autocmd BufWritePre <buffer> :FixWhitespace')
