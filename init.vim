" -----------------------------------------------------------------------------
" vim Config
" -----------------------------------------------------------------------------

" Settings
" -----------------------------------------------------------------------------
let mapleader=" "
set nowrap
set clipboard=unnamedplus
set nospell
set nocompatible              
filetype off

set backspace=indent,eol,start
set nrformats-=octal
set listchars=tab:→\ ,eol:↵,trail:·,extends:↷,precedes:↶
set fillchars=vert:│,fold:·

set laststatus=2
set cursorline
" hide cmd
set noshowcmd

" indent
set autoindent
set smartindent
set cindent

" show wildmenu
set wildmenu

" do not break words.
set linebreak

" Enable line number
set number

" Automatically read a file changed outside of vim
set autoread

set backup
set undofile
set undolevels=1000
let g:data_dir = $HOME . '/.cache/vim/'
let g:backup_dir = g:data_dir . 'backup'
let g:swap_dir = g:data_dir . 'swap'
let g:undo_dir = g:data_dir . 'undofile'
let g:conf_dir = g:data_dir . 'conf'
if finddir(g:data_dir) ==# ''
silent call mkdir(g:data_dir, 'p', 0700)
endif
if finddir(g:backup_dir) ==# ''
silent call mkdir(g:backup_dir, 'p', 0700)
endif
if finddir(g:swap_dir) ==# ''
silent call mkdir(g:swap_dir, 'p', 0700)
endif
if finddir(g:undo_dir) ==# ''
silent call mkdir(g:undo_dir, 'p', 0700)
endif
if finddir(g:conf_dir) ==# ''
silent call mkdir(g:conf_dir, 'p', 0700)
endif
unlet g:data_dir
unlet g:backup_dir
unlet g:swap_dir
unlet g:undo_dir
unlet g:conf_dir
set undodir=$HOME/.cache/vim/undofile
set backupdir=$HOME/.cache/vim/backup
set directory=$HOME/.cache/vim/swap

set nowritebackup
set matchtime=0
set ruler
set showmatch
set showmode
"menuone: show the pupmenu when only one match
" disable preview scratch window,
set completeopt=menu,menuone,longest
set complete=.,w,b,u,t
" limit completion menu height
set pumheight=15
set scrolloff=1
set sidescrolloff=5
set display+=lastline
set incsearch
set hlsearch
set wildignorecase
set mouse=nv
set hidden
set ttimeout
set ttimeoutlen=50
set shortmess+=A
set nowrap

" Variables
" -----------------------------------------------------------------------------

let $NVIM_PYTHON_LOG_FILE="/tmp/nvim_log"
let $NVIM_PYTHON_LOG_LEVEL="DEBUG"

let g:python2_host_prog = '/usr/local/bin/python2.7'
let g:python3_host_prog = '/usr/local/bin/python3.7'


" Autocmds
" -----------------------------------------------------------------------------

augroup reloadVimrc
    " Automatically reload vimrc when changes are made
    au!
    au BufWritePost init.vim,keybindings.vim,plugins.vim so $MYVIMRC
augroup END

augroup fixFiletypes
    " Aliasing file types
    autocmd BufNewFile,BufRead *.todo set syntax=markdown
    autocmd BufNewFile,BufRead *.alias set syntax=zsh
    autocmd BufNewFile,BufRead *.html.eex set syntax=elixir
    autocmd BufNewFile,BufRead *.html.eex set syntax=eelixir
    autocmd BufNewFile,BufRead *.md set wrap
    " autocmd BufNewFile,BufRead *.md set spell
augroup END

augroup customFormatting
    " Strip line endings for certain filetypes
    autocmd FileType c,cpp,java,php,ruby,json,yaml,toml,javascript,html,css,scss,elixir,markdown,jinja,jinja.html autocmd BufWritePre <buffer> %s/\s\+$//e
    autocmd FileType rust autocmd BufWritePre <buffer> :Neomake
    autocmd FileType vue autocmd BufWritePre <buffer> :Neomake
    autocmd FileType vue autocmd BufWritePre <buffer> :call PreciseTrimWhiteSpace()
    autocmd FileType vue syntax sync fromstart
    autocmd FileType javascript,go,eelixir,make,erlang,html,eruby,vue,scss,sass,css call g:CustomFormatting()
    autocmd FileType elixir call deoplete#custom#source('alchemist', 'rank', 500)
augroup END

augroup tabbing
    " Custom formatting
    autocmd FileType yaml,go,eelixir,vim,zsh,rust,javascript,vue,html,eelixir,typescript,json set tabstop=4 shiftwidth=4 expandtab
    autocmd FileType make,erlang setlocal noexpandtab
    autocmd FileType eruby,sass,scss,css set shiftwidth=2 expandtab
augroup END

autocmd FileType go autocmd BufWritePre <buffer> GoFmt

" Delayed commands
" ------------------------------------------

function! g:Delayed(cmd)
    let timer = timer_start(500, {-> execute(a:cmd, "")})
endfunction
" call Delayed("call DeopleteSettings()")

" Source configs
" -----------------------------------------------------------------------------
runtime! plugins.vim
runtime! keybindings.vim
runtime! functions.vim
