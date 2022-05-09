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
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/nlua.nvim",
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
    config = { "\27LJ\2\nà\1\0\0\4\0\f\0\0156\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\0025\3\6\0=\3\a\0025\3\b\0=\3\t\0025\3\n\0=\3\v\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\2\16textobjects\1\0\1\venable\2\26incremental_selection\1\0\1\venable\2\14highlight\1\0\1\venable\2\1\0\1\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\frequire\0" },
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
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  ["scss-syntax.vim"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/scss-syntax.vim",
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
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/tsuquyomi",
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
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vim-bundler",
    url = "https://github.com/tpope/vim-bundler"
  },
  ["vim-coloresque"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vim-coloresque",
    url = "https://github.com/gko/vim-coloresque"
  },
  ["vim-css3-syntax"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vim-css3-syntax",
    url = "https://github.com/hail2u/vim-css3-syntax"
  },
  ["vim-es6"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vim-es6",
    url = "https://github.com/isRuslan/vim-es6"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vim-markdown",
    url = "https://github.com/plasticboy/vim-markdown"
  },
  ["vim-rabl"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vim-rabl",
    url = "https://github.com/yaymukund/vim-rabl"
  },
  ["vim-rails"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vim-rails",
    url = "https://github.com/tpope/vim-rails"
  },
  ["vim-rbenv"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vim-rbenv",
    url = "https://github.com/tpope/vim-rbenv"
  },
  ["vim-ruby"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vim-ruby",
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
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vim-vue-plugin",
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
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vimux",
    url = "https://github.com/preservim/vimux"
  },
  ["vimux-cargo"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/vimux-cargo",
    url = "https://github.com/jtdowney/vimux-cargo"
  },
  ["yats.vim"] = {
    loaded = true,
    path = "/Users/dmix/.local/share/nvim/site/pack/packer/start/yats.vim",
    url = "https://github.com/HerringtonDarkholme/yats.vim"
  }
}

time([[Defining packer_plugins]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[au CmdUndefined :TSUpdate ++once lua require"packer.load"({'nvim-treesitter'}, {}, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
