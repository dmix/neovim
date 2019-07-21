" =============================================================================
" Plugins
" ==============================================================================

" Plugin notes
" -----------------------------------------------------------------------------
" - vim plug
"      PlugInstall! and PlugUpdate!
"
" - greplace.vim
"      Use :Gsearch to get a buffer window of your search results
"      then you can make the replacements inside the buffer window using traditional tools (%s/foo/bar/)
"      Invoke :Greplace to make your changes across all files. It will ask you interatively y/n/a - you can hit 'a' to do all.
"      Save changes to all files with :wall (write all)
"
" - tabularize
"     <Leader>a= :Tabularize /=<CR>
"     <Leader>a: :Tabularize /:\zs<CR>

" Plugins
" -----------------------------------------------------------------------------
call plug#begin("~/vim/plugged")
    " Work around Vim corruption
    " Plug 'bruno-/vim-alt-mappings'

    " Autocomplete / snippets
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Plug 'neoclide/coc-pairs'

    " Plug 'Shougo/deoplete.nvim',            { 'do':  ':UpdateRemotePlugins' }
    " Plug 'billyvg/deoplete-import-js',      { 'for': ['vue', 'javascript'] }
    " Plug 'fishbullet/deoplete-ruby',        { 'for': ['ruby'] }
    " Plug 'sebastianmarkow/deoplete-rust',   { 'for': ['rust'] }
    " Plug 'zchee/deoplete-zsh',              { 'for': ['zsh'] }
    Plug 'Shougo/denite.nvim'
    Plug 'SirVer/ultisnips'
    " Plug 'Shougo/neosnippet.vim'
    " Plug 'Shougo/neosnippet-snippets'
    Plug 'honza/vim-snippets'

    " Colorschemes
    Plug 'cocopon/iceberg.vim'
    Plug 'dmix/vim-hybrid'
    Plug 'joshdick/onedark.vim'
    Plug 'nanotech/jellybeans.vim'
    Plug 'sheerun/vim-polyglot'

    " Statusbar 
    " Workaround https://github.com/vim-airline/vim-airline/issues/1325
    Plug 'bling/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Languages
    Plug 'rust-lang/rust.vim',              { 'for': ['rust'] }
    Plug 'plasticboy/vim-markdown',         { 'for': ['markdown'] }
    Plug 'posva/vim-vue',                   { 'for': ['vue'] }
    Plug 'cakebaker/scss-syntax.vim',       { 'for': ['vue','scss','sass'] }
    Plug 'yaymukund/vim-rabl',              { 'for': ['rabl'] }
    Plug 'hail2u/vim-css3-syntax',          { 'for': ['vue','css'] }
    Plug 'gko/vim-coloresque',              { 'for': ['vue','css','css','sass'] }
    Plug 'isRuslan/vim-es6',                { 'for': ['javascript'] }
    Plug 'dmix/elvish.vim',                 { 'for': ['elvish'] }
    Plug 'dmix/vim-tasks',                  { 'for': ['tasks'] }
    Plug 'leafgarland/typescript-vim',      { 'for': ['typescript'] }

    Plug 'benmills/vimux'
    Plug 'jtdowney/vimux-cargo',            { 'for': ['rust'] }

    Plug 'majutsushi/tagbar'
    Plug 'mhinz/vim-startify'
    Plug 'powerman/vim-plugin-AnsiEsc'
    Plug 'mtth/scratch.vim'
    Plug 'godlygeek/tabular'
    Plug 'vim-scripts/greplace.vim' 
    Plug 'scrooloose/nerdtree'
    Plug 'moll/vim-bbye'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'neomake/neomake'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'wellle/tmux-complete.vim'
    Plug 'vimwiki/vimwiki'
    Plug 'tomtom/tcomment_vim'
    Plug 'kana/vim-operator-user'
    Plug 'rhysd/vim-operator-surround'
    Plug 'tpope/vim-surround'
    " Purgatory
    " Plug 'storyn26383/vim-vue',             { 'for': ['vue'] }
call plug#end()


" -----------------------------------------------------------------------------
" Plugin options
" -----------------------------------------------------------------------------

" Coc
" -----------------------------------------------------------------------------
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Vim operator surround
" -----------------------------------------------------------------------------
map <silent>sa <Plug>(operator-surround-append)
map <silent>sd <Plug>(operator-surround-delete)
map <silent>sr <Plug>(operator-surround-replace)

" Deoplete
" -----------------------------------------------------------------------------

if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

" Deoplete
" -----------------------------------------------------------------------------
let g:deoplete#enable_at_startup = 1
let g:deoplete_import_js#bin = 'importjs'

" vim-bbye
" -----------------------------------------------------------------------------
nnoremap <Leader>bd :Bdelete<CR>

" Task Bindings
" -----------------------------------------------------------------------------
let g:TasksMarkerBase = '☐'
let g:TasksMarkerDone = '✔'
let g:TasksMarkerCancelled = '✘'
let g:TasksAttributeMarker = '@'

" Vim Tmux Navigator
" -----------------------------------------------------------------------------
let g:tmux_navigator_no_mappings = 1

let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>

map <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
map <silent> <C-j> :TmuxNavigateDown<cr>
map <silent> <C-k> :TmuxNavigateUp<cr>
map <silent> <C-l> :TmuxNavigateRight<cr>
map <silent> <C-\> :TmuxNavigatePrevious<cr>

" Vimux
" -----------------------------------------------------------------------------
" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR> 

" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

function! VimuxSlime()
	call VimuxOpenRunner()
	call VimuxSendText(@v)
	call VimuxSendKeys("Enter")
	echom "Vimux GO"
endfunction

" If text is selected, save it in the v buffer and send that buffer it to tmux
vnoremap <Leader>vv "vy :call VimuxSlime()<CR>

" Select current paragraph and send it to tmux
" noremap <Leader>vs vip<Leader>vs<CR>
nnoremap <Leader>vv v$"vy :call VimuxSlime()<CR>

" NERDTree
" ------------------------------------------------------------------------------

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeShowHidden = 1
let g:NERDTreeWinPos = "right"
let g:NERDTreeIgnore = ['\~$', '\.map', '.git$', 'node_modules$', '_build$', 'deps',]

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <C-n> :NERDTreeToggle<CR>

" Startify
" 
" -----------------------------------------------------------------------------

let g:startify_enable_special         = 0
let g:startify_files_number           = 8
let g:startify_relative_path          = 1
let g:startify_change_to_dir          = 1
let g:startify_update_oldfiles        = 1
let g:startify_session_autoload       = 1
let g:startify_session_persistence    = 1

let g:startify_skiplist = [
    \ 'COMMIT_EDITMSG',
    \ 'bundle/.*/doc',
    \ '/data/repo/neovim/runtime/doc',
    \ '/Users/mhi/local/vim/share/vim/vim74/doc',
    \ ]

let g:startify_bookmarks = [
    \ { 'c': '~/.vim/vimrc' },
    \ '~/golfing',
    \ ]

let g:startify_custom_header =
    \ startify#fortune#cowsay('═','║','╔','╗','╝','╚')

let g:startify_custom_footer =
   \ ['', "   Vim is charityware. Please read ':help uganda'.", '']


" Denite
" ------------------------------------------------------------------------------
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction
" call denite#custom#alias('source', 'file_rec/git', 'file_rec')
" call denite#custom#var('file_rec/git', 'command',
    " \ ['git', 'ls-files', '-co', '--exclude-standard'])

" call denite#custom#var('file/rec', 'command',
" \ ['rg', '--files', '--glob', '!.git'])
"
" call denite#custom#var('file/rec', 'command',
" \ ['ag', '--follow', '--nocolor', '--nogroup', '-g', ''])

call denite#custom#var('file/rec', 'command',
    \ ['rg', '--files', '--vimgrep'])

" Change mappings.
call denite#custom#map(
    \ 'insert',
    \ '<C-p>',
    \ '<denite:move_to_previous_line>',
    \ 'noremap'
    \)
call denite#custom#map(
    \ 'insert',
    \ '<C-n>',
    \ '<denite:move_to_next_line>',
    \ 'noremap'
    \)

" Ag command on grep source
call denite#custom#var('grep', 'command', ['rg'])
call denite#custom#var('grep', 'default_opts',
    \ ['-i', '--vimgrep', '--no-heading'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

" call denite#custom#var('grep', 'command', ['pt'])
" call denite#custom#var('grep', 'default_opts',
"     \ ['--nogroup', '--smart-case', '--nocolor'])
" call denite#custom#var('grep', 'recursive_opts', [])
" call denite#custom#var('grep', 'pattern_opt', [])
" call denite#custom#var('grep', 'separator', ['--'])
" call denite#custom#var('grep', 'final_opts', [])

" brew install the_silver_searcher


" Strip Whitespace
" ------------------------------------------------------------------------------

let g:strip_whitespace_on_save = 1
let g:better_whitespace_enabled = 0

" NeoMake x Linters
" ------------------------------------------------------------------------------
" let g:neomake_rust_enabled_makers       = ['rustfmt']
let g:neomake_vim_enabled_makers        = ['vint']
let g:neomake_erlang_enabled_makers     = ['flycheck']
let g:neomake_elixir_enabled_makers     = ['credo']
let g:neomake_css_enabled_makers        = ['stylelint']
" let g:neomake_markdown_enabled_makers   = ['proselint']
let g:neomake_haml_enabled_makers       = ['haml-lint']
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_vue_enabled_makers        = ['eslint']
let g:neomake_ruby_enabled_makers       = ['rubocop']
let g:neomake_haskell_enabled_makers    = ['hlint']
let g:neomake_html_enabled_makers       = ['tidy']
let g:neomake_json_enabled_makers       = ['jsonlint']
let g:neomake_go_enabled_makers         = ['gofmt']
let g:neomake_python_enabled_makers     = ['flake8']
let g:neomake_scss_enabled_makers       = ['sasslint']
let g:neomake_sh_enabled_makers         = ['shellcheck']
let g:neomake_text_enabled_makers       = ['proselint']
let g:neomake_typescript_enabled_makers = ['tslint']
let g:neomake_yaml_enabled_makers       = ['yamllint']
let g:neomake_zsh_enabled_makers        = ['zsh']

" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_javascript_eslint_exec = 'eslint_d'

" gem install haml_lint
" gem install rubocop
" npm install -g sass-lint
" npm install -g stylelint         
" npm install -g proselint
" npm install -g jsonlint
" npm i -g eslint eslint-plugin-vue
" brew install yamllint
" brew install tidy-html5
" gem install solargraph -v 0.18.0
" pip install solargraph-utils.py --user

" Neoformat
" -----------------------------------------------------------------------------
" let g:neoformat_elixir_exfmt = {
"   \ 'exe': 'mix',
"   \ 'args': ['exfmt', '--stdin'],
"   \ 'stdin': 1
"   \ }
"
" let g:neoformat_enabled_elixir = ['exfmt']

" Deoplete
" -----------------------------------------------------------------------------
" Set bin if you have many instalations
" let g:deoplete#sources#ternjs#tern_bin = '/usr/local/bin/tern'
" let g:deoplete#sources#ternjs#timeout = 1
"
" " Whether to include the types of the completions in the result data. Default: 0
" let g:deoplete#sources#ternjs#types = 1
"
" " Whether to include the distance (in scopes for variables, in prototypes for 
" " properties) between the completions and the origin position in the result 
" " data. Default: 0
" let g:deoplete#sources#ternjs#depths = 0
"
" " Whether to include documentation strings (if found) in the result data.
" " Default: 0
" let g:deoplete#sources#ternjs#docs = 0
"
" " When on, only completions that match the current word at the given point will
" " be returned. Turn this off to get all results, so that you can filter on the 
" " client side. Default: 1
" let g:deoplete#sources#ternjs#filter = 1
"
" " Whether to use a case-insensitive compare between the current word and 
" " potential completions. Default 0
" let g:deoplete#sources#ternjs#case_insensitive = 1
"
" " When completing a property and no completions are found, Tern will use some 
" " heuristics to try and return some properties anyway. Set this to 0 to 
" " turn that off. Default: 1
" let g:deoplete#sources#ternjs#guess = 0
"
" " Determines whether the result set will be sorted. Default: 1
" let g:deoplete#sources#ternjs#sort = 1
"
" " When disabled, only the text before the given position is considered part of 
" " the word. When enabled (the default), the whole variable name that the cursor
" " is on will be included. Default: 1
" let g:deoplete#sources#ternjs#expand_word_forward = 1
"
" " Whether to ignore the properties of Object.prototype unless they have been 
" " spelled out by at least two characters. Default: 1
" let g:deoplete#sources#ternjs#omit_object_prototype = 0
"
" " Whether to include JavaScript keywords when completing something that is not 
" " a property. Default: 0
" let g:deoplete#sources#ternjs#include_keywords = 1
"
" " If completions should be returned when inside a literal. Default: 1
" let g:deoplete#sources#ternjs#in_literal = 1
"
"
" "Add extra filetypes
" let g:deoplete#sources#ternjs#filetypes = [
"                 \ 'js',
"                 \ 'jsx',
"                 \ 'javascript.jsx',
"                 \ ]
"                 " \ 'vue',

" Pass a dictionary to set multiple options
" call deoplete#custom#option({
" \ 'auto_complete_delay': 50,
" \ 'smart_case': v:true,
" \ })

let g:deoplete_import_js#bin = 'yarn run importjs'

autocmd FileType markdown
       \ call deoplete#custom#buffer_option('auto_complete', v:false)

" Mix Format
" -----------------------------------------------------------------------------
let g:mix_format_on_save = 1

" Neosnippet
" -----------------------------------------------------------------------------
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

"imap <expr><TAB>
" \ pumvisible() ? "\<C-n>" :
" \ neosnippet#expandable_or_jumpable() ?
" \    "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
" Enable snipMate compatibility feature.
let g:neosnippet#enable_snipmate_compatibility = 1

" Tell Neosnippet about the other snippets
let g:neosnippet#snippets_directory='~/vim/plugged/vim-snippets/snippets'

if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" Tmux
" -----------------------------------------------------------------------------
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>

map <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
map <silent> <C-j> :TmuxNavigateDown<cr>
map <silent> <C-k> :TmuxNavigateUp<cr>
map <silent> <C-l> :TmuxNavigateRight<cr>
map <silent> <C-\> :TmuxNavigatePrevious<cr>

" Tags
" -----------------------------------------------------------------------------
autocmd BufRead *.rs :setlocal tags=./tags;/,./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi;
autocmd BufRead *.vue,*.js :setlocal tags=./tags;

" Rustfmt
" -----------------------------------------------------------------------------
let g:rustfmt_autosave = 1

" Jellybean theme
" -----------------------------------------------------------------------------
let g:jellybeans_use_term_italics = 1
let g:jellybeans_overrides = {
\    'background': { 'guibg': '0e0e0e' },
\    'Comment': { 'guifg': '7d7d7d',
\                 'guibg': '0e0e0e',
\                 'ctermfg': 'Black',
\                 'ctermbg': 'Gray',
\                 'attr': '' },
\}


" Themes 
" -----------------------------------------------------------------------------

let g:hybrid_custom_term_colors = 1
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors
let g:onedark_terminal_italics=0
let g:onedark_termcolors = 1
let g:onedark_color_overrides = {
\ "black": {"gui": "#121419", "cterm": "235", "cterm16": "0" },
\}
let g:lightline = {
\ 'colorscheme': 'onedark',
\ }
let g:airline_theme='onedark'
set background=dark
syntax on
colorscheme onedark
autocmd ColorScheme * call onedark#set("CursorLine", { "bg": { "gui": "#000000", "cterm": 235, "ctergm16": 0 } })
