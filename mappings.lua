local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    ["<Leader><Leader>"] = { ":nohlsearch<CR>" }, -- clear searrch highlighting
    ["C-f"] = { ":Format<CR>" },
    ["<Leader>s"] = { ":ClangdSwitchSourceHeader<CR>" },
  },
}

M.tree = {
  n = {
    ["<Leader>z-"] = { ":NvimTreeResize -5 <CR>", "Width -" },
    ["<Leader>z+"] = { ":NvimTreeResize +5 <CR>", "Width +" },
  },
}

M.lsp = {
  n = {
    ["<Leader>ld"] = { "<cmd>lua vim.lsp.buf.hover() <CR>",          "Show description",       {noremap = true, silent = true} },
    ["<Leader>li"] = { "<cmd>lua vim.lsp.buf.implementation() <CR>", "Jump to implementation", {noremap = true, silent = true} },
    ["<Leader>lj"] = { "<cmd>lua vim.lsp.buf.definition() <CR>",     "Jump to defenition",     {noremap = true, silent = true} },
    ["<Leader>lw"] = { "<cmd>lua vim.diagnostic.setloclist() <CR>",  "Show file diagnostic",   {noremap = true, silent = true} },
  }
}

M.telescope = {
  n = {
    ["<C-p>"] = { ":Telescope git_files <CR>" },
    ["<leader>pf"] = { "<cmd> Telescope find_files <CR>", "find files" },
    ["<leader>pfa"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "find all" },
    ["<leader>pg"] = { "<cmd> Telescope live_grep <CR>", "live grep" },
    ["<leader>pb"] = { "<cmd> Telescope buffers <CR>", "find buffers" },
    ["<leader>ph"] = { "<cmd> Telescope help_tags <CR>", "help page" },
    ["<leader>po"] = { "<cmd> Telescope oldfiles <CR>", "find oldfiles" },
    ["<leader>pk"] = { "<cmd> Telescope keymaps <CR>", "show keys" },
  },
}

M.lspconfig = {
  n = {
    ["gl"] = { '<cmd>lua vim.diagnostic.open_float(0, { scope = "line", border = "single" })<CR>' },
    ["<leader>dF"] = { "<cmd>lua vim.diagnostic.goto_prev()<CR>", "go to previous diagnostic" },
    ["<leader>df"] = { "<cmd>lua vim.diagnostic.goto_next()<CR>", "go to next diagnostic" },
    ["<leader>dt"] = { "<cmd>Telescope diagnostics<CR>", "telescope diagnostics" },
    ["<leader>da"] = { "<cmd>lua vim.lsp.buf.code_action()<CR>", "lsp code action" },
  },
}

return M
