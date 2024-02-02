local M = {}

local merge_tb = vim.tbl_deep_extend
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require("lspconfig")
local providers = require("custom.providers")

for _, provider in pairs(providers.provide) do 
  local opts = {
		on_attach = on_attach,
		capabilities = capabilities,
	}

  if provider.lsp and provider.lsp ~= "" then 
    local exists, settings = pcall(require, "custom.configs.lsp.server-settings." .. provider.lsp)
    if exists then
      opts = merge_tb("force", settings, opts)
      lspconfig[provider.lsp].setup(opts)
    end
  end
end

local config = {
	virtual_text = false,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
	float = {
		focusable = false,
		style = "minimal",
		border = "single",
		source = "always",
	},
}

vim.diagnostic.config(config)
return M
