local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

lspconfig.gopls.setup({
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = {"go"},
  root_dir = lspconfig.util.root_pattern("go.mod"),
})

lspconfig.rust_analyzer.setup({
  capabilities = capabilities,
  on_attach = on_attach,
  filetypes = {"rust", "rs"},
  root_dir = lspconfig.util.root_pattern("Cargo.toml"),
})

lspconfig.pyright.setup({
  capabilities = capabilities,
  on_attach = on_attach,
  settings = {
    python = {
      pythonPath = "/usr/bin/python3",
    },
    pyright = {}
  },
})
