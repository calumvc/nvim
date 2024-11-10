local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-lualine/lualine.nvim'
  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-lua/plenary.nvim'
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use 'Yazeed1s/oh-lucy.nvim'
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }
  use 'aserowy/tmux.nvim'
  use {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require('dashboard').setup {

    theme = 'doom',
  config = {
    header = {
      [[                                        ]],
      [[      ⢠⣤⣶⣶⣖⣠⠦⢤⣦⣄⣠⣠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⢸⠿⣿⣿⣿⣿⠀⢼⣿⣿⣿⣿⣿⡤⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠙⠿⣿⣿⠁⢻⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⢺⡿⣱⣦⡀⢹⣿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⢋⠁⠻⠿⠅⠜⢡⣾⣿⣿⣿⣷⣾⣶⣦⣄⣀⣤⡀⢀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⢈⡆⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣤⣄⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⢀⢼⡇⠀⠀⠀⠈⠋⣩⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⡀⠈⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣿⣿⠟⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⠀⠀]],
      [[⠀⠀⠀⠀⠠⠁⢔⢠⣶⠢⣄⣄⠀⠀⠻⣿⣿⣿⣿⣿⡿⠃⠀⠘⢉⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄ ]],
      [[⠀⠀⠀⠠⠐⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⠛⠋⠁⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇]],
      [[⠠⢈⡀⠀⠀⢀⠑⠆⠒⠀⠤⠀⣀⡀⠀⣀⣸⡿⠀⠴⢲⣖⣒⡒⠞⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁]],
      [[⠀⠁⠀⠘⢸⣬⡖⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⠛⠁⠀⠀⠈⢻⣿⣿⣿⣿⣿⣿⣿⡟⡟⠋⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠐⠂⠀⠀⠠⢤⡿⠉⠉⠛⣿⠋⠉⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡀⣀⣪⢀⢠⡴⠊⠉⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠊⣴⣿⡿⠟⠊⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[                                        ]],
    },
    center = {
       {
        icon = '  ',
        desc = 'Find File                               ',
        action = 'Telescope find_files find_command=rg,--hidden,--files',
        shortcut = 'SPC f f'
      },
      {
        icon = '  ',
        desc = 'Recently opened                         ',
        action = 'Telescope oldfiles',
        shortcut = 'SPC f r'
      },
      {
        icon = 'פּ  ',
        desc = 'File browser                            ',
        action = 'NvimTreeToggle',
        shortcut = 'SPC f o'
      },
      {
        icon = '  ',
        desc = 'Search for word                         ',
        action = 'Telescope live_grep',
        shortcut = 'SPC f g'
      },
      {
        icon = '  ',
        desc = 'Help                                    ',
        action = 'Telescope help_tags',
        shortcut = 'SPC f h'
      },
      {
        icon = '  ',
        desc = 'Commands                                ',
        action = 'Telescope commands',
        shortcut = 'SPC ?  '
      },
    },
  }
}
    end,
    requires = {'nvim-tree/nvim-web-devicons'}
  }


  if packer_bootstrap then
    require('packer').sync()
  end
end)
