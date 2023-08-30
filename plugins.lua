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
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "mfussenegger/nvim-dap",
      "theHamsta/nvim-dap-virtual-text",
      "nvim-treesitter/nvim-treesitter",
    },
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
        },
      }
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