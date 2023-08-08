local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local util = require "lspconfig/util"

lspconfig.gopls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
  cmd = { "gopls" },
  filetypes = { "go", "gomod", "gowork", "gotmpl" },
  root_dir = util.root_pattern("go.mod", "go.work", ".git"),
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
    },
  }
})

lspconfig.pyright.setup({
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = { "python" },

})

lspconfig.rust_analyzer.setup({
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = { "rust" },
  root_dir = lspconfig.util.root_pattern("Cargo.toml"),
})