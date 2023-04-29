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
    "fatih/vim-go",
    ft = "go",
    config = function ()
    end,
  },

}
return plugins
