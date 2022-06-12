------------------------------------------------------------------------------
-- Plugin Config
-------------------------------------------------------------------------------
-- Dependencies:
--
--   gem install bundler rubocop solargraph haml_lint gem-browse gem-ctags erb_lint
--   npx install-peerdeps eslint-config-airbnb-base
--   npm install -g eslint eslint-plugin-jasmine@latest eslint-plugin-vue@latest sass-lint stylelint proselint jsonlint
--   npm install -g typescript typescript-language-server vscode-langservers-extracted dockerfile-language-server-nodejs vscode-langservers-extracted prettier cspell markdownlint volar
--   brew install yamllint shellcheck tidy-html5 ctags checkmake
--   pip install solargraph-utils.py --user
--   pip install vim-vint
--   luarocks install luacheck

local vimp = require('vimp')
local cmd = vim.cmd
local fn = vim.fn
local g = vim.g
local o = vim.o
local b = vim.b

-- themer.lua
--------------------------------------------------------------------------------
require("themer").setup({
  colorscheme = "gruvbox",
  styles = {
  },
})

-- Vimspect
--------------------------------------------------------------------------------
g.vimspector_enable_mappings = 'HUMAN'
g.vimspector_base_dir = '/Users/dmix/.local/share/nvim/site/pack/packer/start/vimspector'

-- bbye
-- -----------------------------------------------------------------------------
vimp.nnoremap('<leader>bd', [[:Bdelete<cr>]])

-- Vim Tmux Navigator
--------------------------------------------------------------------------------
g.tmux_navigator_no_mappings = 1
-- vimp.nnoremap('<silent> <C-h>', ':TmuxNavigateLeft<cr>')
-- vimp.nnoremap('<silent> <C-j>', ':TmuxNavigateDown<cr>')
-- vimp.nnoremap('<silent> <C-k>', ':TmuxNavigateUp<cr>')
-- vimp.nnoremap('<silent> <C-l>', ':TmuxNavigateRight<cr>')
-- vimp.nnoremap('<silent> <BS>', ':TmuxNavigateLeft<cr>')
vimp.map('<silent> <C-h>', ':TmuxNavigateLeft<cr>')
vimp.map('<silent> <C-j>', ':TmuxNavigateDown<cr>')
vimp.map('<silent> <C-k>', ':TmuxNavigateUp<cr>')
vimp.map('<silent> <C-l>', ':TmuxNavigateRight<cr>')
vimp.map('<silent> <C-\\>', ':TmuxNavigatePrevious<cr>')

-- nvim-comp
--------------------------------------------------------------------------------
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

-- Use an on_attach function to only vimp.map('the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  -- vim.api.nbuf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  -- vim.api.nbuf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  -- vim.api.nbuf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  -- vim.api.nbuf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  -- vim.api.nbuf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  -- vim.api.nbuf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  -- vim.api.nbuf_set_keymap(bufnr, 'n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  -- vim.api.nbuf_set_keymap(bufnr, 'n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  -- vim.api.nbuf_set_keymap(bufnr, 'n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  -- vim.api.nbuf_set_keymap(bufnr, 'n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  -- vim.api.nbuf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  -- vim.api.nbuf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  -- vim.api.nbuf_set_keymap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  -- vim.api.nbuf_set_keymap(bufnr, 'n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)
end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- vimp.map('buffer local keybindings when the language server attaches
local servers = { 'solargraph', 'eslint', 'tsserver', 'volar' } -- 'rubocop',
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
require("nvim-lsp-installer").setup {
  ensure_installed = servers
}
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

-- vsnip
--------------------------------------------------------------------------------
vimp.imap('<expr> <C-j>', "vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'")
vimp.smap('<expr> <C-j>', "vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-j>'")
vimp.imap('<expr> <C-l>', "vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'")
vimp.smap('<expr> <C-l>', "vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-l>'")
vimp.imap('<expr> <Tab>', "vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'")
vimp.smap('<expr> <Tab>', "vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'")
vimp.imap('<expr> <S-Tab>', "vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'")
vimp.smap('<expr> <S-Tab>', "vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'")
vimp.nmap('s', '<Plug>(vsnip-select-text)')
vimp.xmap('s', '<Plug>(vsnip-select-text)')
vimp.nmap('S', '<Plug>(vsnip-cut-text)')
vimp.xmap('S', '<Plug>(vsnip-cut-text)')

-- Fern.vim
--------------------------------------------------------------------------------
g.fern = { renderer = "nerdfont" }
-- vimp.nnoremap('<C-n>', ':Fern . -drawer<CR>')
-- vimp.nnoremap('<C-N>', ':Fern . -opener=edit<CR>')
vimp.nnoremap('<C-n>', ':Fern . -drawer<CR>')

-- Startify
--------------------------------------------------------------------------------
g.startify_enable_special         = 0
g.startify_files_number           = 8
g.startify_relative_path          = 1
g.startify_change_to_dir          = 1
g.startify_update_oldfiles        = 1
g.startify_session_autoload       = 1
g.startify_session_persistence    = 1

g.startify_skiplist = {
  'COMMIT_EDITMSG',
  'bundle/.*/doc',
  '/data/repo/neovim/runtime/doc',
  '/Users/mhi/local/vim/share/vim/vim74/doc',
}

g.startify_bookmarks = {
  { c = '~/.vim/vimrc' },
  '~/golfing',
}

g.startify_custom_header = "startify#fortune#cowsay('═','║','╔','╗','╝','╚')"

-- Strip Whitespace
---------------------------------------------------------------------------------

g.strip_whitespace_on_save = 1
g.better_whitespace_enabled = 0


-- Ale
---------------------------------------------------------------------------------
g.ale_completion_enabled = 1
b.ale_fixers = { 'vint', 'flycheck', 'credo', 'stylelint', 'proselint', 'haml-lint', 'eslint', 'eslint', 'eslint', 'rubocop', 'hlint', 'tidy', 'jsonlint', 'gofmt', 'flake8', 'sasslint', 'shellcheck', 'proselint', 'tslint', 'yamllint', 'zsh' }
b.ale_linters = { 'solargraph', 'vint', 'flycheck', 'credo', 'stylelint', 'proselint', 'haml-lint', 'eslint', 'rubocop', 'hlint', 'tidy', 'jsonlint', 'gofmt', 'flake8', 'sasslint', 'shellcheck', 'proselint', 'tsserver', 'tslint', 'yamllint', 'zsh', 'erb_lint', 'checkmake', 'cspell', 'luacheck', 'markdownlint', 'volar' }

-- ctags
--------------------------------------------------------------------------------
-- RUN THESE COMMANDS:
--   mkdir -p ~/.rbenv/plugins
--   git clone git://github.com/tpope/rbenv-ctags.git \
--     ~/.rbenv/plugins/rbenv-ctags
--   rbenv ctags
--   gem ctags
--   ctags -R --languages=ruby,rspec,scss,yaml,javascript,typescript --exclude=.git --exclude=log -f tags
o.tags = tags
vimp.nnoremap('<leader>ct', ':silent ! ctags -R --languages=ruby,rspec,scss,yaml,,javascript,typescript --exclude=.git --exclude=log -f tags<cr>')
-- vim.api.nvim_exec([[
--   autocmd 'BufRead *.rs :setlocal tags=./tags;/,./rusty-tags.vi;/,$RUST_SRC_PATH/rusty-tags.vi;'
--   autocmd 'BufRead *.vue,*.js :setlocal tags=./tags;'
-- ]], false)

-- Formater
--------------------------------------------------------------------------------
g.mix_format_on_save = 1
g.rustfmt_autosave = 1

-- Themes
--------------------------------------------------------------------------------

o.background = 'dark'
cmd('syntax on')

g.NVIM_TUI_ENABLE_TRUE_COLOR = 1
g.termguicolors = 1

-- Ghost editor
vim.api.nvim_exec([[
  " Multiple autocommands can be specified like so -
  augroup nvim_ghost_user_autocommands
    au User www.reddit.com,www.stackoverflow.com set filetype=markdown
    au User www.reddit.com,www.github.com set filetype=markdown
    au User *github.com set filetype=markdown
  augroup END
]], true)

-- Treesitter
--------------------------------------------------------------------------------
--
-- :TSInstall c css bash clojure comment cpp eex exilir erlang go html http json make ocaml php python regex ruby rust toml todotxt vim vue yaml
--
-- if cmd("exists('g:started_by_firenvim')") then
--   -- Setup nvim-cmp.
--   local cmp = require'cmp'
--
--   cmp.enabled = false
--   cmp.setup({
--     enabled = false
--   })
--
--   cmd('colorscheme onehalflight')
--   o.guifont = 'Monaco:h20'
-- end
--

-- Denite
--------------------------------------------------------------------------------

-- Define mappings
vim.api.nvim_exec([[
" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
" nnoremap <leader>g <cmd>Telescope live_grep<cr>
" nnoremap <leader>h <cmd>Telescope help_tags<cr>
]], true)
