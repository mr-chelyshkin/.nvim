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
        -- Rust
        "rust-analyzer",
        -- Python
        "pyright",
      },
    },
  },

  -- Golang plugins
  {
    "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua",
      "neovim/nvim-lspconfig",
      "nvim-treesitter/nvim-treesitter",
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
