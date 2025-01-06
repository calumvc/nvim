require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "ast_grep", "hls", "eslint", "ts_ls", "lua_ls" }
})
require("lspconfig").ast_grep.setup {}
require('lspconfig')['hls'].setup{
  filetypes = { 'haskell', 'lhaskell', 'cabal' }
}
require("lspconfig").eslint.setup ({})
require("lspconfig").ts_ls.setup ({})
require("lspconfig").lua_ls.setup ({})
