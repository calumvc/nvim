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
  use 'nvim-telescope/telescope.nvim'
  use 'ficcdaf/ashen.nvim'

  -- completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lua'
  use 'hrsh7th/cmp-nvim-lsp'

  -- lsp
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
  }

  use {
    'sphamba/smear-cursor.nvim',
    -- event = 'VimEnter',
    config = function()
      require("smear_cursor").setup({})
    end
  }

  -- dashboard config in here because this accursed plugin cant be left on its own
  use {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    config = function()
      require("dashboard").setup({

          theme = 'doom',
          config = {
            header = {
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
              "",
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
              "",
              "",
            },
            center = {
              {
                icon = '  ',
                desc = 'Find File                               ',
                action = 'Telescope find_files',
                shortcut = 'SPC f f',
                key = "f"
              },
              {
                icon = '  ',
                desc = 'Recently Opened                         ',
                action = 'Telescope oldfiles',
                shortcut = 'SPC f r',
                key = "r"
              },
              {
                icon = 'פּ  ',
                desc = 'File Browser                            ',
                action = 'NvimTreeToggle',
                shortcut = 'SPC f o',
                key = "o"
              },
          },
          footer = {
            "",
            "",
            "Welcome back",
            ""
          },
        },
      })
    end,
    }

  if packer_bootstrap then
    require('packer').sync()
  end
end)
