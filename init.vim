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

" Having longer updatetime (default is 4000 ms = 4 s) leads to delays
set updatetime=300

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

set nobackup
set noswapfile

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

" Python
" -----------------------------------------------------------------------------

" --- Instructions ---
"
" brew install pyenv pyenv-virtualenv
" pyenv install 3.6.1
" pyenv install 2.7.18
" pyenv virtualenv 2.7.18 neovim2
" pyenv virtualenv 3.6.1 neovim3
" pyenv activate neovim2
" pip install neovim
" pyenv which python  # Note the path
"
" pyenv activate neovim3
" pip install neovim
" pyenv which python  # Note the path
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python'
" let g:python_host_prog = '/Users/dmix/.pyenv/versions/neovim2/bin/python'
" let g:python3_host_prog = '/Users/dmix/.pyenv/versions/neovim3/bin/python'

" let $NVIM_PYTHON_LOG_FILE="~/tmp/nvim.log"
" let $NVIM_PYTHON_LOG_LEVEL="DEBUG"

" Autocmds
" -----------------------------------------------------------------------------

augroup reloadVimrc
    " Automatically reload vimrc when changes are made
    au!
    au BufWritePost init.vim,keybindings.vim,plugins.vim so $MYVIMRC
augroup END

augroup fixFiletypes
    " Aliasing file types
    " autocmd BufNewFile,BufRead *.todo set syntax=markdown
    autocmd BufNewFile,BufRead *.alias set syntax=zsh
    autocmd BufNewFile,BufRead *.html.eex set syntax=elixir
    autocmd BufNewFile,BufRead *.html.eex set syntax=eelixir
    autocmd BufNewFile,BufRead *.md set wrap ft=tasks
    " autocmd BufNewFile,BufRead *.md set spell
augroup END

augroup customFormatting
    " Strip line endings for certain filetypes
    autocmd FileType c,cpp,java,php,ruby,json,yaml,toml,javascript,html,css,scss,elixir,markdown,jinja,jinja.html autocmd BufWritePre <buffer> %s/\s\+$//e
    autocmd FileType javascript autocmd BufWritePre <buffer> :Neomake
    autocmd FileType typescript autocmd BufWritePre <buffer> :Neomake
    autocmd FileType rust autocmd BufWritePre <buffer> :Neomake
    autocmd FileType vue autocmd BufWritePre <buffer> :Neomake
    autocmd FileType vue autocmd BufWritePre <buffer> :call PreciseTrimWhiteSpace()
    autocmd FileType vue syntax sync fromstart
    autocmd FileType javascript,go,eelixir,make,erlang,html,eruby,vue,scss,sass,css call g:CustomFormatting()
    autocmd FileType elixir call deoplete#custom#source('alchemist', 'rank', 500)
augroup END

augroup tabbing
    " Custom formatting
    autocmd FileType yaml,haskell,go,eelixir,vim,zsh,rust,javascript,vue,html,eelixir,typescript,json set tabstop=4 shiftwidth=4 expandtab
    autocmd FileType make,erlang setlocal noexpandtab
    autocmd FileType eruby,sass,scss,css set shiftwidth=2 expandtab
augroup END

autocmd FileType go autocmd BufWritePre <buffer> GoFmt
autocmd FileType * autocmd BufWritePre <buffer> :FixWhitespace

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

"  Coc extensions
" -----------------------------------------------------------------------------
" Calculator!
nmap <Leader>ca <Plug>(coc-calc-result-append)

" Run to install Coc plugins:
" :CocInstall coc-json coc-tsserver coc-calc
