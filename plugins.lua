local plugins = {
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "williamboman/mason.nvim",
    opts = {
      -- [external deps] :MasonInstallAll
      ensure_installed = {
        -- Golang
        "gopls",
        -- Python
        "pyright",
        "mypy",
        "ruff",
        "black",
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    run = ':TSUpdate',
    config = function()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = {"go", "python"},
        highlight = {
          enable = true,
          use_languagetree = true
        },
        indent = {
          enable = true
        },
      }
    end,
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "theHamsta/nvim-dap-virtual-text",
    },
    config = function()

    end,
  },

  -- Python plugins
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"python"},
    opts = function()
      return require "custom.configs.python"
    end,
  },

  -- Golang plugins
  {
    "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
    },
    opts = function()
      return require "custom.configs.go"
    end,
    config = function()
      require("go").setup()
      require("go.format").goimport()
    end,
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
    build = ':lua require("go.install").update_all_sync()',
  }
}
return plugins