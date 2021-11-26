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
" Project search and buffer management
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }

" Autocomplete
Plug 'neoclide/coc.nvim', {'branch': 'master'}
Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
Plug 'yaegassy/coc-volar', {'do': 'yarn install --frozen-lockfile'}

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Plug 'Shougo/neosnippet.vim'
" Plug 'Shougo/neosnippet-snippets'

" Colorschemes
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate', 'tag': '1.4.17' }
Plug 'dmix/onedark.nvim'

" Statusbar
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" File browser
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

" Commenting
Plug 'tomtom/tcomment_vim'

" Vue
Plug 'leafOfTree/vim-vue-plugin',      { 'for': ['vue'] }

" Rust
Plug 'preservim/vimux',                 { 'for': ['rust'] }
Plug 'rust-lang/rust.vim',              { 'for': ['rust'] }
Plug 'jtdowney/vimux-cargo',            { 'for': ['rust'] }

" Haskell
Plug 'junegunn/fzf',                    { 'for': ['haskell'], 'dir': '~/.fzf', 'do': './install --all'}
Plug 'monkoose/fzf-hoogle.vim',         { 'for': ['haskell'] }

" Languages
Plug 'plasticboy/vim-markdown',         { 'for': ['markdown'] }
Plug 'yaymukund/vim-rabl',              { 'for': ['rabl'] }
Plug 'cakebaker/scss-syntax.vim',       { 'for': ['vue', 'scss','sass'] }
Plug 'hail2u/vim-css3-syntax',          { 'for': ['vue', 'css'] }
Plug 'gko/vim-coloresque'
Plug 'isRuslan/vim-es6',                { 'for': ['vue', 'javascript'] }
Plug 'Quramy/tsuquyomi',                { 'for': ['typescript', 'vue'], 'do': 'make -f make_mac.mak' }
Plug 'HerringtonDarkholme/yats.vim',    { 'for': ['typescript', 'vue'] }
" Plug 'fatih/vim-go',                    { 'for': ['go'], 'do': ':GoUpdateBinaries' }
" Plug 'dmix/elvish.vim',                 { 'for': ['elvish'] }
Plug 'tpope/vim-rails',                 { 'for': ['ruby'] }
Plug 'euclidianAce/BetterLua.vim',      { 'for': ['lua', 'viml', 'vim'] }
Plug 'ekalinin/Dockerfile.vim'

Plug 'dmix/vim-tasks',                  { 'for': ['tasks'] }
Plug 'mhinz/vim-startify'
Plug 'powerman/vim-plugin-AnsiEsc'
Plug 'mtth/scratch.vim'
Plug 'moll/vim-bbye' " Buffer delete
Plug 'editorconfig/editorconfig-vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'wellle/tmux-complete.vim'
Plug 'kana/vim-operator-user'
Plug 'rhysd/vim-operator-surround'
Plug 'tpope/vim-surround'
Plug 'neomake/neomake'
Plug 'tracyone/neomake-multiprocess'

" Strip Whitespace
Plug 'bronson/vim-trailing-whitespace'

" Hop (easymotion remake) tag positions and jump between them
Plug 'phaazon/hop.nvim'
call plug#end()


" -----------------------------------------------------------------------------
" Plugin options
" -----------------------------------------------------------------------------

" Hop
" -----------------------------------------------------------------------------

lua << EOF
require'hop'.setup()
EOF


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
" let g:TasksMarkerBase      = '☐'
" let g:TasksMarkerDone      = '✔'
" let g:TasksMarkerCancelled = '✘'
" let g:TasksAttributeMarker = '@'

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
" " Prompt for a command to run
" map <Leader>vp :VimuxPromptCommand<CR>
"
" " Run last command executed by VimuxRunCommand
" map <Leader>vl :VimuxRunLastCommand<CR>
"
" function! VimuxSlime()
" 	call VimuxOpenRunner()
" 	call VimuxSendText(@v)
" 	call VimuxSendKeys("Enter")
" 	echom "Vimux GO"
" endfunction
"
" " If text is selected, save it in the v buffer and send that buffer it to tmux
" vnoremap <Leader>vv "vy :call VimuxSlime()<CR>
"
" " Select current paragraph and send it to tmux
" " noremap <Leader>vs vip<Leader>vs<CR>
" nnoremap <Leader>vv v$"vy :call VimuxSlime()<CR>

" NVIM Tree
" -----------------------------------------------------------------------------

let g:nvim_tree_side = 'left' "left by default
let g:nvim_tree_width = 30 "30 by default, can be width_in_columns or 'width_in_percent%'
let g:nvim_tree_ignore = [ '.git', 'node_modules', '.cache' ] "empty by default
let g:nvim_tree_gitignore = 1 "0 by default
let g:nvim_tree_auto_open = 1 "0 by default, opens the tree when typing `vim $DIR` or `vim`
let g:nvim_tree_auto_close = 1 "0 by default, closes the tree when it's the last window
let g:nvim_tree_follow = 1 "0 by default, this option allows the cursor to be updated when entering a buffer
let g:nvim_tree_hide_dotfiles = 0 "0 by default, this option hides files and folders starting with a dot `.`
let g:nvim_tree_lsp_diagnostics = 1 "0 by default, will show lsp diagnostics in the signcolumn. See :help nvim_tree_lsp_diagnostics
let g:nvim_tree_special_files = {} "{ 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
let g:nvim_tree_icon_padding = ' '
let g:nvim_tree_icons = {
    \ 'default': '',
    \ 'symlink': ' ',
    \ 'git': {
    \   'unstaged': "✗",
    \   'staged': "✓",
    \   'unmerged': "",
    \   'renamed': "➜",
    \   'untracked': "★",
    \   'deleted': "",
    \   'ignored': "◌"
    \   },
    \ 'folder': {
    \   'arrow_open': " ",
    \   'arrow_closed': " ",
    \   'default': " ",
    \   'open': "+",
    \   'empty': " ",
    \   'empty_open': " ",
    \   'symlink': " ",
    \   'symlink_open': " ",
    \   },
    \   'lsp': {
    \     'hint': "",
    \     'info': "",
    \     'warning': "",
    \     'error': "",
    \   }
    \ }
nnoremap <C-n> :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>n :NvimTreeFindFile<CR>
set termguicolors " this variable must be enabled for colors to be applied properly

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

" Define mappings
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

" " Change file/rec command.
set wildignore+=**/bower_components/**,**/node_modules/**,**vendor/bundle**,**target/scala**,**project/target**,*.jpg,*.gif,*.png,*.svg,*.zip
call denite#custom#var('grep', {
    \ 'command': ['rg'],
    \ 'default_opts': ['-i', '--vimgrep', '--no-heading'],
    \ 'recursive_opts': [],
    \ 'pattern_opt': ['--regexp'],
    \ 'separator': ['--'],
    \ 'final_opts': [],
    \ })
call denite#custom#var('file/rec', 'command',
\ ['rg', '--files', '--glob', '!.git', '--color', 'never'])

" Change default action.
" call denite#custom#kind('file', 'default_action', 'vsplit')

call denite#custom#alias('source', 'file/rec/git', 'file/rec')
call denite#custom#var('file/rec/git', 'command',
      \ ['git', 'ls-files', '-co', '--exclude-standard'])

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
let g:neomake_typescript_enabled_makers = ['eslint']
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
let g:neomakemp_grep_command = "rg"
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

" Mix Format
" -----------------------------------------------------------------------------
let g:mix_format_on_save = 1

" Neosnippet
" -----------------------------------------------------------------------------

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

smap <expr><TAB> neosnippet#expandable_or_jumpable() ? "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
let g:neosnippet#enable_snipmate_compatibility = 1
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

" Themes
" -----------------------------------------------------------------------------

set background=dark
syntax on

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set termguicolors

set numberwidth=5
let g:onedark_termcolors = 16
let g:onedark_italic_comment = 1
let g:onedark_terminal_italics=1
let g:onedark_transparent_background = 1
let g:lightline = {
\ 'colorscheme': 'onedark',
\ }
let g:onedark_style = 'darker'
colorscheme onedark

" Treesitter
" -----------------------------------------------------------------------------

lua << EOF
-- require('onedark').setup()
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,
    disable = { "vim" },
  },
}
EOF

" Airline
" -----------------------------------------------------------------------------
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_theme='onedark'
let g:airline_section_error = airline#section#create_right(['%{neomakemp#run_status()}'])

" Notes
" -----------------------------------------------------------------------------
let g:notes_directories = ['~/notes']

" Coc extensions
" -----------------------------------------------------------------------------

" :CocInstall coc-tsserver coc-css coc-elixir coc-emmet coc-eslint coc-git  coc-go  coc-html coc-markdown  coc-rls coc-sh  coc-stylelint  coc-yaml coc-xml coc-vetur
" @yaegassy/coc-volar

" Coc
" -----------------------------------------------------------------------------
" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

let g:coc_snippet_next = '<tab>'
let g:coc_snippet_prev = '<c-k>'
let g:coc_global_extensions = ['coc-solargraph']

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Vim operator surround
" -----------------------------------------------------------------------------

map <silent>sa <Plug>(operator-surround-append)
map <silent>sd <Plug>(operator-surround-delete)
map <silent>sr <Plug>(operator-surround-replace)
" Haskell
" -----------------------------------------------------------------------------

augroup HoogleMaps
  autocmd!
  autocmd FileType haskell nnoremap <buffer> <space>hh :Hoogle <C-r><C-w><CR>
augroup END

