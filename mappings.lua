local M = {}

M.general = {
    n = {
        [";"] = { ":", "command mode", opts = { nowait = true } },
        ["<Leader><Leader>"] = { ":nohlsearch<CR>" }, -- clear searrch highlighting
        ["C-f"] = { ":Format<CR>" },
        ["<Leader>s"] = { ":ClangdSwitchSourceHeader<CR>" },
    },
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

M.nvim_dap = {
    n = {
        ["<leader>dl"] = { "<cmd>lua require'dap'.step_into()<CR>", "debugger step into" },
        ["<leader>dj"] = { "<cmd>lua require'dap'.step_over()<CR>", "debugger step over" },
        ["<leader>dk"] = { "<cmd>lua require'dap'.step_out()<CR>", "debugger step out" },
        ["<leader>d<space>"] = { "<cmd>lua require'dap'.continue()<CR>", "debugger continue" },
        ["<leader>dbp"] = { "<cmd>lua require'dap'.toggle_breakpoint()<CR>", "debugger toggle breakpoint" },
        ["<leader>dd"] = {
            "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>",
            "debugger set conditional breakpoint",
        },
        ["<leader>de"] = { "<cmd>lua require'dap'.terminate()<CR>", "debugger reset" },
        ["<leader>dr"] = { "<cmd>lua require'dap'.run_last()<CR>", "debugger reset" },
        -- map("n", "<leader>m", ":MaximizerToggle!<CR>", { noremap = true })
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
