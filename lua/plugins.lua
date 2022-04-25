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

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  -- Lua/vim
  use 'svermeulen/vimpeccable'
  use 'themercorp/themer.lua'
  use {
    'nvim-treesitter/nvim-treesitter',
    cmd = ':TSUpdate',
    config = function()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = "all",
        highlight = {
          enable = true,
        },
        incremental_selection = { enable = true },
        textobjects = { enable = true },
        indent = {
            enable = true
        },
      }
    end
  }

  -- Sidebar
  use 'antoinemadec/FixCursorHold.nvim'
  use 'lambdalisue/nerdfont.vim'
  use 'lambdalisue/fern.vim'
  use 'lambdalisue/fern-renderer-nerdfont.vim'

  -- Colorschemes
  use 'morhetz/gruvbox'

  -- Project search and buffer management
  use { 
    'Shougo/denite.nvim',
    run = ':UpdateRemotePlugins'
  }

  -- Commenting
  use 'tomtom/tcomment_vim'

  -- Git
  use 'tanvirtin/vgit.nvim'

  -- Chrome integration
  use { 
    'glacambre/firenvim',
    run = function() vim.fn['firenvim#install'](0) end
  }

  -- motion
  use 'phaazon/hop.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/completion-nvim'
  use 'euclidianAce/BetterLua.vim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'

  -- Debugging
  use 'puremourning/vimspector'
  -- use 'mfusenegger/nvim-dap'

  -- Auto-completion
  use 'dense-analysis/ale'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'

  -- Snippets
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'
  use 'Shougo/neosnippet.vim'
  use 'Shougo/neosnippet-snippets'

  -- Programming Languages
  use { 'tjdevries/nlua.nvim',             ft = { 'lua', 'vim' } }
  use { 'preservim/vimux',                 ft = { 'rust' } }
  use { 'rust-lang/rust.vim',              ft = { 'rust' } }
  use { 'jtdowney/vimux-cargo',            ft = { 'rust' } }
  use { 'vim-ruby/vim-ruby',               ft = { 'ruby', 'erb' } }
  use { 'tpope/vim-rails',                 ft = { 'ruby', 'erb' } }
  use { 'tpope/vim-rbenv',                 ft = { 'ruby', 'erb' } }
  use { 'tpope/vim-bundler',               ft = { 'ruby', 'erb' } }
  use { 'plasticboy/vim-markdown',         ft = { 'markdown' } }
  use { 'yaymukund/vim-rabl',              ft = { 'rabl' } }
  use { 'cakebaker/scss-syntax.vim',       ft = { 'vue', 'scss','sass' } }
  use { 'hail2u/vim-css3-syntax',          ft = { 'vue', 'css'} }
  use { 'leafOfTree/vim-vue-plugin',       ft = { 'vue' } }
  use { 'isRuslan/vim-es6',                ft = { 'vue', 'javascript' } }
  use { 'Quramy/tsuquyomi',                ft = { 'typescript', 'vue', run = 'make -f make_mac.mak' } }
  use { 'HerringtonDarkholme/yats.vim',    ft = { 'typescript', 'vue' } }
  use 'ekalinin/Dockerfile.vim'
  use 'hashivim/vim-vagrant'
  use 'gko/vim-coloresque'

  -- Other
  use 'kiurchv/asdf.plugin.zsh'
  use 'szw/vim-tags'
  use 'mhinz/vim-startify'
  use 'moll/vim-bbye' -- Buffer delete
  use 'editorconfig/editorconfig-vim'
  use 'bronson/vim-trailing-whitespace'
  use 'christoomey/vim-tmux-navigator'
  use 'wellle/tmux-complete.vim'

end)
