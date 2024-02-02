local M = {}

M.provide = {
  {
    name = "python3_provider",
    meta = { python3_host_prog = "/opt/homebrew/bin/python3.12" },
    lsp = "pyright"
  },
  {
    name = "cpp_provider",
    meta = {},
    lsp = "clangd",
  },
  {
    name = "golang_provider",
    meta = {},
    lsp = "gopls",
  },
  {
    name = "rust_provider",
    meta = {},
    lsp = "rust_analyzer",
  },
  {
    name = "nodejs_provider",
    meta = {},
    lsp = "tsserver",
  },
}

return M
