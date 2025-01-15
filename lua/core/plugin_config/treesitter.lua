require'nvim-treesitter.configs'.setup {
  ensure_installed = {
    "c",
    "css",
    "gitignore",
    "graphql",
    "haskell",
    "html",
    "javascript",
    "lua",
    "php",
    "python",
    "sql",
    "tsx",
    "typescript",
    "vim" },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
