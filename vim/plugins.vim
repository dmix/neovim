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
call plug#begin('~/vim/plugged')

" Project search and buffer management
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }

" Git
Plug 'tanvirtin/vgit.nvim'

" Chrome integration
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } }

" Lint
Plug 'neovim/nvim-lspconfig'

" Debugging
Plug 'puremourning/vimspector'
Plug 'mfussenegger/nvim-dap'

" cmp
Plug 'dense-analysis/ale'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
" Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
" Autocomplete
" Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
" Plug 'neoclide/coc-tsserver', {'do': 'yarn install --frozen-lockfile'}
" Plug 'yaegassy/coc-volar', {'do': 'yarn install --frozen-lockfile'}

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

" Colorschemes
" Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
Plug 'dmix/onedark.nvim'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'kiurchv/asdf.plugin.zsh'
Plug 'morhetz/gruvbox'

" Statusbar
" Plug 'bling/vim-airline'
" Plug 'vim-airline/vim-airline-themes'

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

Plug 'ekalinin/Dockerfile.vim'
Plug 'hashivim/vim-vagrant'

" Ruby
Plug 'vim-ruby/vim-ruby',               { 'for': ['ruby', 'erb'] }
Plug 'tpope/vim-rails',                 { 'for': ['ruby', 'erb'] }
Plug 'tpope/vim-rbenv',                 { 'for': ['ruby', 'erb'] }
Plug 'tpope/vim-bundler',               { 'for': ['ruby', 'erb'] }

" Misc
Plug 'szw/vim-tags'
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
" Strip Whitespace
Plug 'bronson/vim-trailing-whitespace'

" File browser
" Plug 'kyazdani42/nvim-web-devicons' " for file icons
" Plug 'kyazdani42/nvim-tree.lua'

" Fern.vim
Plug 'antoinemadec/FixCursorHold.nvim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/fern.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'

" Better ls
" plug ;supercrabtree/k'

" Hop (easymotion remake) tag positions and jump between them
" Plug 'phaazon/hop.nvim'

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
Plug 'euclidianAce/BetterLua.vim',      { 'for': ['lua', 'viml', 'vim'] }
" Plug 'tpope/vim-rails'
" Hop (easymotion remake) tag positions and jump between them
" sd
call plug#end()


" -----------------------------------------------------------------------------
" Plugin options
" -----------------------------------------------------------------------------

" firenviom
" -----------------------------------------------------------------------------

" Vimspect
" -----------------------------------------------------------------------------

let g:vimspector_enable_mappings = 'HUMAN'

" Tabularize
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
" Use ALE and also some plugin 'foobar' as completion sources for all code.

" vim-bbye
" -----------------------------------------------------------------------------
nnoremap <Leader>bd :Bdelete<CR>

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

" nvim-comp
" -----------------------------------------------------------------------------

lua << EOF

  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      expand = function(args)
        -- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
        vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
      end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      -- { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

  -- Mappings.
  -- See `:help vim.diagnostic.*` for documentation on any of the below functions
  local opts = { noremap=true, silent=true }
  vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
  vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
  vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
  vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

  -- Use an on_attach function to only map the following keys
  -- after the language server attaches to the current buffer
  local on_attach = function(client, bufnr)
    -- Enable completion triggered by <c-x><c-o>
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    -- Mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
    vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
  end

  -- Use a loop to conveniently call 'setup' on multiple servers and
  -- map buffer local keybindings when the language server attaches
  local servers = { 'solargraph', 'eslint', 'tsserver', 'volar' } -- 'rubocop',
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  for _, lsp in pairs(servers) do
    require('lspconfig')[lsp].setup {
      on_attach = on_attach,
      flags = {
        -- This will be the default in neovim 0.7+
        debounce_text_changes = 150,
      },
      capabilities = capabilities
    }
  end

  -- local tabnine = require('cmp_tabnine.config')
  -- tabnine:setup({
  --     max_lines = 1000;
  --     max_num_results = 20;
  --     sort = true;
  --     run_on_every_keystroke = true;
  --     snippet_placeholder = '..';
  --     ignored_file_types = { -- default is not to ignore
  --         -- uncomment to ignore in lua:
  --         -- lua = true
  --     };
  --     show_prediction_strength = false;
  -- })

EOF

" vsnip
" -----------------------------------------------------------------------------

" Expand
imap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'
smap <expr> <C-j>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'

" Expand or jump
imap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'
smap <expr> <C-l>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'

" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
nmap        s   <Plug>(vsnip-select-text)
xmap        s   <Plug>(vsnip-select-text)
nmap        S   <Plug>(vsnip-cut-text)
xmap        S   <Plug>(vsnip-cut-text)

" If you want to use snippet for multiple filetypes, you can `g:vsnip_filetypes` for it.
let g:vsnip_filetypes = {}
let g:vsnip_filetypes.javascriptreact = ['javascript']
let g:vsnip_filetypes.typescriptreact = ['typescript']

" Fern.vim
" -----------------------------------------------------------------------------
let g:fern#renderer = "nerdfont"
nnoremap <C-n> :Fern . -drawer<CR>
nnoremap <C-n> :Fern . -opener=edit<CR>

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


" Ale
" ------------------------------------------------------------------------------
let g:ale_completion_enabled = 1
let b:ale_fixers = ['vint', 'flycheck', 'credo', 'stylelint', 'proselint', 'haml-lint', 'eslint', 'eslint', 'eslint', 'rubocop', 'hlint', 'tidy', 'jsonlint', 'gofmt', 'flake8', 'sasslint', 'shellcheck', 'proselint', 'tslint', 'yamllint', 'zsh']
let b:ale_linters = ['solargraph', 'vint', 'flycheck', 'credo', 'stylelint', 'proselint', 'haml-lint', 'eslint', 'rubocop', 'hlint', 'tidy', 'jsonlint', 'gofmt', 'flake8', 'sasslint', 'shellcheck', 'proselint', 'tsserver', 'tslint', 'yamllint', 'zsh', 'erb_lint', 'checkmake', 'cspell', 'luacheck', 'markdownlint', 'volar']

" Linters
" ------------------------------------------------------------------------------
" " let g:syntastic_javascript_checkers = ['eslint']
" " let g:syntastic_javascript_eslint_exec = 'eslint_d'

" Dependencies
" -----------------------------------------------------------------------------

" INSTALL THESE PACKAGES:
" gem install bundler rubocop solargraph haml_lint gem-browse gem-ctags erb_lint
" npx install-peerdeps eslint-config-airbnb-base
" npm install -g eslint eslint-plugin-jasmine@latest eslint-plugin-vue@latest sass-lint stylelint proselint jsonlint
" npm install -g typescript typescript-language-server vscode-langservers-extracted dockerfile-language-server-nodejs vscode-langservers-extracted prettier cspell markdownlint volar
" brew install yamllint shellcheck tidy-html5 ctags checkmake
" pip install solargraph-utils.py --user
" pip install vim-vint
" luarocks install luacheck

" ctags
" -----------------------------------------------------------------------------

set tags+=tags
nnoremap <leader>ct :silent ! ctags -R --languages=ruby,rspec,scss,yaml,,javascript,typescript --exclude=.git --exclude=log -f tags<cr>
"
" " RUN THESE COMMANDS:
" mkdir -p ~/.rbenv/plugins
" git clone git://github.com/tpope/rbenv-ctags.git \
"   ~/.rbenv/plugins/rbenv-ctags
"
" rbenv ctags
" gem ctags
" ctags -R --languages=ruby,rspec,scss,yaml,javascript,typescript --exclude=.git --exclude=log -f tags

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

" Treesitter
" -----------------------------------------------------------------------------

" lua << EOF
" -- require('onedark').setup()
" require'nvim-treesitter.configs'.setup {
"   -- ensure_installed = { "c", "lua", "rust" },
"   ensure_installed = "all",
"   highlight = {
"     enable = true,
"   },
"   incremental_selection = { enable = true },
"   textobjects = { enable = true },
"   indent = {
"       enable = true
"   },
" }
" EOF

" Airline
" -----------------------------------------------------------------------------
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#buffer_nr_show = 1
" let g:airline_theme='onedark'
" let g:airline_section_error = airline#section#create_right(['%{neomakemp#run_status()}'])

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
" function! s:check_back_space() abort
"   let col = col('.') - 1
"   return !col || getline('.')[col - 1]  =~ '\s'
" endfunction
"
" inoremap <silent><expr> <TAB>
"       \ pumvisible() ? coc#_select_confirm() :
"       \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
"       \ <SID>check_back_space() ? "\<TAB>" :
"       \ coc#refresh()
"
" " Use <C-l> for trigger snippet expand.
" imap <C-l> <Plug>(coc-snippets-expand)
"
" " Use <C-j> for select text for visual placeholder of snippet.
" vmap <C-j> <Plug>(coc-snippets-select)
"
" let g:coc_snippet_next = '<tab>'
" let g:coc_snippet_prev = '<c-k>'
" let g:coc_global_extensions = ['coc-solargraph']
"
" " Use <C-j> for both expand and jump (make expand higher priority.)
" imap <C-j> <Plug>(coc-snippets-expand-jump)
" nmap <silent> gd <Plug>(coc-definition)
" nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gi <Plug>(coc-implementation)
" nmap <silent> gr <Plug>(coc-references)
"
" " Vim operator surround
" " -----------------------------------------------------------------------------
"
" map <silent>sa <Plug>(operator-surround-append)
" map <silent>sd <Plug>(operator-surround-delete)
" map <silent>sr <Plug>(operator-surround-replace)

" Haskell
" -----------------------------------------------------------------------------

augroup HoogleMaps
  autocmd!
  autocmd FileType haskell nnoremap <buffer> <space>hh :Hoogle <C-r><C-w><CR>
augroup END


" Task Bindings
" -----------------------------------------------------------------------------
" let g:TasksMarkerBase      = '☐'
" let g:TasksMarkerDone      = '✔'
" let g:TasksMarkerCancelled = '✘'
" let g:TasksAttributeMarker = '@'

if exists('g:started_by_firenvim')
    colorscheme onehalflight
    lua << EOF

      -- Setup nvim-cmp.
      local cmp = require'cmp'

      cmp.enabled = false
      cmp.setup({
          enabled = false
      })
    EOF

    set guifont=Monaco:h20

    let g:airline_theme='onehalfdark'
end
