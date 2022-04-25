-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/dmix/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/dmix/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/dmix/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/dmix/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/dmix/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["BetterLua.vim"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/BetterLua.vim",
    url = "https://github.com/euclidianAce/BetterLua.vim"
  },
  ["Dockerfile.vim"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/Dockerfile.vim",
    url = "https://github.com/ekalinin/Dockerfile.vim"
  },
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ale = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/ale",
    url = "https://github.com/dense-analysis/ale"
  },
  ["asdf.plugin.zsh"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/asdf.plugin.zsh",
    url = "https://github.com/kiurchv/asdf.plugin.zsh"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/completion-nvim",
    url = "https://github.com/nvim-lua/completion-nvim"
  },
  ["denite.nvim"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/denite.nvim",
    url = "https://github.com/Shougo/denite.nvim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/editorconfig-vim",
    url = "https://github.com/editorconfig/editorconfig-vim"
  },
  ["fern-renderer-nerdfont.vim"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/fern-renderer-nerdfont.vim",
    url = "https://github.com/lambdalisue/fern-renderer-nerdfont.vim"
  },
  ["fern.vim"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/fern.vim",
    url = "https://github.com/lambdalisue/fern.vim"
  },
  firenvim = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/firenvim",
    url = "https://github.com/glacambre/firenvim"
  },
  gruvbox = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/gruvbox",
    url = "https://github.com/morhetz/gruvbox"
  },
  ["hop.nvim"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["neosnippet-snippets"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/neosnippet-snippets",
    url = "https://github.com/Shougo/neosnippet-snippets"
  },
  ["neosnippet.vim"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/neosnippet.vim",
    url = "https://github.com/Shougo/neosnippet.vim"
  },
  ["nerdfont.vim"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/nerdfont.vim",
    url = "https://github.com/lambdalisue/nerdfont.vim"
  },
  ["nlua.nvim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/opt/nlua.nvim",
    url = "https://github.com/tjdevries/nlua.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    commands = { ":TSUpdate" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["rust.vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/opt/rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  ["scss-syntax.vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/opt/scss-syntax.vim",
    url = "https://github.com/cakebaker/scss-syntax.vim"
  },
  tcomment_vim = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/tcomment_vim",
    url = "https://github.com/tomtom/tcomment_vim"
  },
  ["themer.lua"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/themer.lua",
    url = "https://github.com/themercorp/themer.lua"
  },
  ["tmux-complete.vim"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/tmux-complete.vim",
    url = "https://github.com/wellle/tmux-complete.vim"
  },
  tsuquyomi = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/opt/tsuquyomi",
    url = "https://github.com/Quramy/tsuquyomi"
  },
  ultisnips = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/ultisnips",
    url = "https://github.com/SirVer/ultisnips"
  },
  ["vgit.nvim"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vgit.nvim",
    url = "https://github.com/tanvirtin/vgit.nvim"
  },
  ["vim-bbye"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vim-bbye",
    url = "https://github.com/moll/vim-bbye"
  },
  ["vim-bundler"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-bundler",
    url = "https://github.com/tpope/vim-bundler"
  },
  ["vim-coloresque"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vim-coloresque",
    url = "https://github.com/gko/vim-coloresque"
  },
  ["vim-css3-syntax"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-css3-syntax",
    url = "https://github.com/hail2u/vim-css3-syntax"
  },
  ["vim-es6"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-es6",
    url = "https://github.com/isRuslan/vim-es6"
  },
  ["vim-markdown"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-markdown",
    url = "https://github.com/plasticboy/vim-markdown"
  },
  ["vim-rabl"] = {
    after_files = { "/Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-rabl/after/plugin/rabl.vim" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-rabl",
    url = "https://github.com/yaymukund/vim-rabl"
  },
  ["vim-rails"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-rails",
    url = "https://github.com/tpope/vim-rails"
  },
  ["vim-rbenv"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-rbenv",
    url = "https://github.com/tpope/vim-rbenv"
  },
  ["vim-ruby"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-ruby",
    url = "https://github.com/vim-ruby/vim-ruby"
  },
  ["vim-snippets"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vim-snippets",
    url = "https://github.com/honza/vim-snippets"
  },
  ["vim-startify"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vim-startify",
    url = "https://github.com/mhinz/vim-startify"
  },
  ["vim-tags"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vim-tags",
    url = "https://github.com/szw/vim-tags"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["vim-trailing-whitespace"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vim-trailing-whitespace",
    url = "https://github.com/bronson/vim-trailing-whitespace"
  },
  ["vim-vagrant"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vim-vagrant",
    url = "https://github.com/hashivim/vim-vagrant"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ",
    url = "https://github.com/hrsh7th/vim-vsnip-integ"
  },
  ["vim-vue-plugin"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-vue-plugin",
    url = "https://github.com/leafOfTree/vim-vue-plugin"
  },
  vimpeccable = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vimpeccable",
    url = "https://github.com/svermeulen/vimpeccable"
  },
  vimspector = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vimspector",
    url = "https://github.com/puremourning/vimspector"
  },
  vimux = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/opt/vimux",
    url = "https://github.com/preservim/vimux"
  },
  ["vimux-cargo"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/opt/vimux-cargo",
    url = "https://github.com/jtdowney/vimux-cargo"
  },
  ["yats.vim"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/opt/yats.vim",
    url = "https://github.com/HerringtonDarkholme/yats.vim"
  }
}

time([[Defining packer_plugins]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[au CmdUndefined :TSUpdate ++once lua require"packer.load"({'nvim-treesitter'}, {}, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType css ++once lua require("packer.load")({'vim-css3-syntax'}, { ft = "css" }, _G.packer_plugins)]]
vim.cmd [[au FileType rust ++once lua require("packer.load")({'rust.vim', 'vimux-cargo', 'vimux'}, { ft = "rust" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'tsuquyomi', 'yats.vim'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType vue ++once lua require("packer.load")({'vim-es6', 'tsuquyomi', 'scss-syntax.vim', 'vim-vue-plugin', 'yats.vim', 'vim-css3-syntax'}, { ft = "vue" }, _G.packer_plugins)]]
vim.cmd [[au FileType scss ++once lua require("packer.load")({'scss-syntax.vim'}, { ft = "scss" }, _G.packer_plugins)]]
vim.cmd [[au FileType lua ++once lua require("packer.load")({'nlua.nvim'}, { ft = "lua" }, _G.packer_plugins)]]
vim.cmd [[au FileType ruby ++once lua require("packer.load")({'vim-ruby', 'vim-rails', 'vim-bundler', 'vim-rbenv'}, { ft = "ruby" }, _G.packer_plugins)]]
vim.cmd [[au FileType erb ++once lua require("packer.load")({'vim-ruby', 'vim-rails', 'vim-bundler', 'vim-rbenv'}, { ft = "erb" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'vim-es6'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'vim-markdown'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType sass ++once lua require("packer.load")({'scss-syntax.vim'}, { ft = "sass" }, _G.packer_plugins)]]
vim.cmd [[au FileType vim ++once lua require("packer.load")({'nlua.nvim'}, { ft = "vim" }, _G.packer_plugins)]]
vim.cmd [[au FileType rabl ++once lua require("packer.load")({'vim-rabl'}, { ft = "rabl" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]], true)
vim.cmd [[source /Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]]
time([[Sourcing ftdetect script at: /Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]], false)
time([[Sourcing ftdetect script at: /Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-rabl/ftdetect/rabl.vim]], true)
vim.cmd [[source /Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-rabl/ftdetect/rabl.vim]]
time([[Sourcing ftdetect script at: /Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-rabl/ftdetect/rabl.vim]], false)
time([[Sourcing ftdetect script at: /Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-es6/ftdetect/es6.vim]], true)
vim.cmd [[source /Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-es6/ftdetect/es6.vim]]
time([[Sourcing ftdetect script at: /Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-es6/ftdetect/es6.vim]], false)
time([[Sourcing ftdetect script at: /Users/dmix/.local/share/nvim/site/pack/packer/opt/tsuquyomi/ftdetect/typescript.vim]], true)
vim.cmd [[source /Users/dmix/.local/share/nvim/site/pack/packer/opt/tsuquyomi/ftdetect/typescript.vim]]
time([[Sourcing ftdetect script at: /Users/dmix/.local/share/nvim/site/pack/packer/opt/tsuquyomi/ftdetect/typescript.vim]], false)
time([[Sourcing ftdetect script at: /Users/dmix/.local/share/nvim/site/pack/packer/opt/rust.vim/ftdetect/rust.vim]], true)
vim.cmd [[source /Users/dmix/.local/share/nvim/site/pack/packer/opt/rust.vim/ftdetect/rust.vim]]
time([[Sourcing ftdetect script at: /Users/dmix/.local/share/nvim/site/pack/packer/opt/rust.vim/ftdetect/rust.vim]], false)
time([[Sourcing ftdetect script at: /Users/dmix/.local/share/nvim/site/pack/packer/opt/scss-syntax.vim/ftdetect/scss.vim]], true)
vim.cmd [[source /Users/dmix/.local/share/nvim/site/pack/packer/opt/scss-syntax.vim/ftdetect/scss.vim]]
time([[Sourcing ftdetect script at: /Users/dmix/.local/share/nvim/site/pack/packer/opt/scss-syntax.vim/ftdetect/scss.vim]], false)
time([[Sourcing ftdetect script at: /Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-ruby/ftdetect/ruby.vim]], true)
vim.cmd [[source /Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-ruby/ftdetect/ruby.vim]]
time([[Sourcing ftdetect script at: /Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-ruby/ftdetect/ruby.vim]], false)
time([[Sourcing ftdetect script at: /Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-ruby/ftdetect/ruby_extra.vim]], true)
vim.cmd [[source /Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-ruby/ftdetect/ruby_extra.vim]]
time([[Sourcing ftdetect script at: /Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-ruby/ftdetect/ruby_extra.vim]], false)
time([[Sourcing ftdetect script at: /Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-vue-plugin/ftdetect/vue.vim]], true)
vim.cmd [[source /Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-vue-plugin/ftdetect/vue.vim]]
time([[Sourcing ftdetect script at: /Users/dmix/.local/share/nvim/site/pack/packer/opt/vim-vue-plugin/ftdetect/vue.vim]], false)
time([[Sourcing ftdetect script at: /Users/dmix/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescript.vim]], true)
vim.cmd [[source /Users/dmix/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescript.vim]]
time([[Sourcing ftdetect script at: /Users/dmix/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescript.vim]], false)
time([[Sourcing ftdetect script at: /Users/dmix/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescriptreact.vim]], true)
vim.cmd [[source /Users/dmix/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescriptreact.vim]]
time([[Sourcing ftdetect script at: /Users/dmix/.local/share/nvim/site/pack/packer/opt/yats.vim/ftdetect/typescriptreact.vim]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
