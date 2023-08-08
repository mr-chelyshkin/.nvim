local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local python = require('null-ls')

local opts = {
  sources = {
    python.builtins.formatting.black,
    python.builtins.diagnostics.mypy,
    python.builtins.diagnostics.ruff,
  },
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_clear_autocmds({
        group = augroup,
        buffer = bufnr,
       })
       vim.api.nvim_create_autocmd("BufWritePre",{
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format({ bufnr = bufnr })
        end,
      })
    end
  end,
}
return opts