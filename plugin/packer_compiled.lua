-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "C:\\Users\\calum\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\share\\lua\\5.1\\?.lua;C:\\Users\\calum\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\share\\lua\\5.1\\?\\init.lua;C:\\Users\\calum\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\luarocks\\rocks-5.1\\?.lua;C:\\Users\\calum\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\luarocks\\rocks-5.1\\?\\init.lua"
local install_cpath_pattern = "C:\\Users\\calum\\AppData\\Local\\Temp\\nvim\\packer_hererocks\\2.1.1713484068\\lib\\lua\\5.1\\?.so"
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
  ["dashboard-nvim"] = {
    config = { "\27LJ\2\n�\20\0\0\6\0\15\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\r\0005\3\4\0005\4\3\0=\4\5\0034\4\a\0005\5\6\0>\5\1\0045\5\a\0>\5\2\0045\5\b\0>\5\3\0045\5\t\0>\5\4\0045\5\n\0>\5\5\0045\5\v\0>\5\6\4=\4\f\3=\3\14\2B\0\2\1K\0\1\0\vconfig\1\0\1\vconfig\0\vcenter\1\0\4\vaction\23Telescope commands\rshortcut\fSPC ?  \tdesc-Commands                                \ticon\n  \1\0\4\vaction\24Telescope help_tags\rshortcut\fSPC f h\tdesc-Help                                    \ticon\n  \1\0\4\vaction\24Telescope live_grep\rshortcut\fSPC f g\tdesc-Search for word                         \ticon\n  \1\0\4\vaction\19NvimTreeToggle\rshortcut\fSPC f o\tdesc-File browser                            \ticon\nפּ  \1\0\4\vaction\23Telescope oldfiles\rshortcut\fSPC f r\tdesc-Recently opened                         \ticon\n  \1\0\4\vaction:Telescope find_files find_command=rg,--hidden,--files\rshortcut\fSPC f f\tdesc-Find File                               \ticon\n  \vheader\1\0\2\vheader\0\vcenter\0\1\16\0\0q      ⢠⣤⣶⣶⣖⣠⠦⢤⣦⣄⣠⣠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀}⠀⠀⠀⠀⠀⢸⠿⣿⣿⣿⣿⠀⢼⣿⣿⣿⣿⣿⡤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀}⠀⠀⠀⠀⠀⠀⠀⠙⠿⣿⣿⠁⢻⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀}⠀⠀⠀⠀⠀⠀⠀⠀⢺⡿⣱⣦⡀⢹⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀}⠀⠀⠀⠀⠀⠀⠀⠀⢋⠁⠻⠿⠅⠜⢡⣾⣿⣿⣿⣷⣾⣶⣦⣄⣀⣤⡀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀}⠀⠀⠀⠀⠀⠀⠀⠀⢈⡆⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣤⣄⠀⠀⠀⠀⠀⠀}⠀⠀⠀⠀⠀⠀⠀⢀⢼⡇⠀⠀⠀⠈⠋⣩⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀}⠀⠀⠀⠀⠀⠀⡀⠈⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⠟⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀{⠀⠀⠀⠀⠠⠁⢔⢠⣶⠢⣄⣄⠀⠀⠻⣿⣿⣿⣿⣿⡿⠃⠀⠘⢉⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄ }⠀⠀⠀⠠⠐⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⠛⠋⠁⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇}⠠⢈⡀⠀⠀⢀⠑⠆⠒⠀⠤⠀⣀⡀⠀⣀⣸⡿⠀⠴⢲⣖⣒⡒⠞⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁}⠀⠁⠀⠘⢸⣬⡖⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⠛⠁⠀⠀⠈⢻⣿⣿⣿⣿⣿⣿⣿⡟⡟⠋⠀⠀}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠐⠂⠀⠀⠠⢤⡿⠉⠉⠛⣿⠋⠉⠀⠀⠀⠀⠀}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⣀⣪⢀⢠⡴⠊⠉⠀⠀⠀⠀⠀⠀⠀}⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠊⣴⣿⡿⠟⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀\nsetup\14dashboard\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "C:\\Users\\calum\\AppData\\Local\\nvim-data\\site\\pack\\packer\\opt\\dashboard-nvim",
    url = "https://github.com/nvimdev/dashboard-nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "C:\\Users\\calum\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "C:\\Users\\calum\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "C:\\Users\\calum\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "C:\\Users\\calum\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "C:\\Users\\calum\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "C:\\Users\\calum\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "C:\\Users\\calum\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\nvim-web-devicons",
    url = "https://github.com/nvim-tree/nvim-web-devicons"
  },
  ["oh-lucy.nvim"] = {
    loaded = true,
    path = "C:\\Users\\calum\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\oh-lucy.nvim",
    url = "https://github.com/Yazeed1s/oh-lucy.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "C:\\Users\\calum\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "C:\\Users\\calum\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "C:\\Users\\calum\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tmux.nvim"] = {
    loaded = true,
    path = "C:\\Users\\calum\\AppData\\Local\\nvim-data\\site\\pack\\packer\\start\\tmux.nvim",
    url = "https://github.com/aserowy/tmux.nvim"
  }
}

time([[Defining packer_plugins]], false)
vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'dashboard-nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
