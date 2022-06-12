-----------------------------------------------------------------------------
-- NVIM PLUGINS
-----------------------------------------------------------------------------
--
-- Dependencies:
--
-- gem install bundler rubocop solargraph haml_lint gem-browse gem-ctags erb_lint
-- npx install-peerdeps eslint-config-airbnb-base
-- npm install -g eslint eslint-plugin-jasmine@latest eslint-plugin-vue@latest sass-lint stylelint proselint jsonlint
-- npm install -g typescript typescript-language-server vscode-langservers-extracted dockerfile-language-server-nodejs vscode-langservers-extracted prettier cspell markdownlint volar
-- brew install yamllint shellcheck tidy-html5 ctags checkmake
-- pip install solargraph-utils.py --user
-- pip install vim-vint
-- luarocks install luacheck
--
-----------------------------------------------------------------------------

require "paq" {
  "savq/paq-nvim";                  -- Let Paq manage itself

  -- LSP
  'williamboman/nvim-lsp-installer';
  'neovim/nvim-lspconfig';
  --'nvim-lua/completion-nvim';

  -- lua
  -- 'euclidianAce/BetterLua.vim';
  'nvim-lua/plenary.nvim';
  -- 'nvim-lua/popup.nvim';

  -- Firefox editing
  {
    'subnut/nvim-ghost.nvim',
    run = ':call nvim_ghost#installer#install()'
  };

  -- Lua/vim
  'svermeulen/vimpeccable';
  'themercorp/themer.lua';

  { 'nvim-treesitter/nvim-treesitter', run = ":TSUpdate" };

  -- Sidebar
  'antoinemadec/FixCursorHold.nvim';
  'lambdalisue/nerdfont.vim';
  'lambdalisue/fern.vim';
  'lambdalisue/fern-renderer-nerdfont.vim';

  -- Colorschemes
  'morhetz/gruvbox';

  -- Commenting
  'tomtom/tcomment_vim';

  -- Git
  'tanvirtin/vgit.nvim';

  -- Chrome integration
  -- {
  --   'glacambre/firenvim',
  --   run = function() vim.fn['firenvim#install'](0) end
  -- };

  -- motion
  'phaazon/hop.nvim';

  -- Project search and buffer management
  'nvim-telescope/telescope.nvim';

  -- Debugging
  'puremourning/vimspector';
  -- 'mfusenegger/nvim-dap'

  -- Auto-completion
  'dense-analysis/ale';
  'hrsh7th/nvim-cmp';
  'hrsh7th/cmp-nvim-lsp';
  'hrsh7th/cmp-buffer';
  'hrsh7th/cmp-path';
  -- 'hrsh7th/cmp-runline';
  'hrsh7th/vim-vsnip';
  'hrsh7th/vim-vsnip-integ';
  'L3MON4D3/LuaSnip';
  'saadparwaiz1/cmp_luasnip';

  -- Snippets
  'SirVer/ultisnips';
  'honza/vim-snippets';
  'Shougo/neosnippet.vim';
  'Shougo/neosnippet-snippets';

  -- Programming Languages
  'tjdevries/nlua.nvim';
  'preservim/vimux';
  'rust-lang/rust.vim';
  'jtdowney/vimux-cargo';
  'vim-ruby/vim-ruby';
  'tpope/vim-rails';
  'tpope/vim-rbenv';
  'tpope/vim-bundler';
  'plasticboy/vim-markdown';
  'yaymukund/vim-rabl';
  'cakebaker/scss-syntax.vim';
  'hail2u/vim-css3-syntax';
  'leafOfTree/vim-vue-plugin';
  'isRuslan/vim-es6';
  'Quramy/tsuquyomi';
  'HerringtonDarkholme/yats.vim';
  'ekalinin/Dockerfile.vim';
  'hashivim/vim-vagrant';
  'gko/vim-coloresque';

  -- Other
  'kiurchv/asdf.plugin.zsh';
  'szw/vim-tags';
  'mhinz/vim-startify';
  'moll/vim-bbye'; -- Buffer delete
  -- 'editorconfig/editorconfig-vim';
  'bronson/vim-trailing-whitespace';
  'christoomey/vim-tmux-navigator';
  'wellle/tmux-complete.vim';
}
