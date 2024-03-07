require("custom.globals")
require("custom.autocmds")

local theme = require("custom.theme")
for key, value in pairs(theme.options) do
  vim.opt[key] = value
end

local providers = require("custom.providers")
for _, provider in pairs(providers.provide) do
  vim.g["loaded_" .. provider.name] = nil
  vim.cmd("runtime " .. provider.name)

  for k, v in pairs(provider.meta) do
    vim.g[k] = v
  end
end

-- hide startup message 
vim.opt.shortmess:append("c")

-- highlight yank 
vim.cmd([[
augroup highlight_yank
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank({timeout = 80})
augroup END
]])

-- wrap git commit body message lines at 72 characters 
vim.cmd([["
    augroup gitsetup
        autocmd!
        autocmd FileType gitcommit
                \ autocmd CursorMoved,CursorMovedI * 
                        \ let &l:textwidth = line('.') == 1 ? 50 : 72
augroup end
"]])

