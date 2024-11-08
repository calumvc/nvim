require'nvim-treesitter.configs'.setup {
  ensure_installed = { 
    "c",
    "css",
    "gitignore",
    "haskell", 
    "lua", 
    "php",
    "python", 
    "sql",
    "vim" },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
