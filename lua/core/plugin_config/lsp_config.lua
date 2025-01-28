require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = {
    "cssls",
    "emmet_ls",
    "eslint",
    "graphql",
    "hls",
    "html",
    "lua_ls",
    "pyright",
    "tailwindcss",
    "vtsls",
  }
})

require("lspconfig").cssls.setup({})
require("lspconfig").emmet_ls.setup({})
require("lspconfig").eslint.setup({})
require("lspconfig").graphql.setup({})
require('lspconfig')['hls'].setup{
  filetypes = { 'haskell', 'lhaskell', 'cabal' }
}
require("lspconfig").html.setup({})
require("lspconfig").lua_ls.setup ({})
require("lspconfig").pyright.setup ({})
require("lspconfig").tailwindcss.setup ({})
require("lspconfig").vtsls.setup ({})
