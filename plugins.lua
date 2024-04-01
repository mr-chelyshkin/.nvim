local overrides = require("custom.configs.overrides")

local lsp = {
	"neovim/nvim-lspconfig",
	dependencies = {
		{
			"jose-elias-alvarez/null-ls.nvim",
			config = function()
				require("custom.configs.lsp.null-ls")
			end,
		},
	},

	config = function()
		require("plugins.configs.lspconfig")
		require("custom.configs.lsp.lsp")
	end,
}

return {
  lsp,

  {
	  "williamboman/mason.nvim",
	  opts = overrides.mason,
  }, {
	  "nvim-treesitter/nvim-treesitter",
	  opts = overrides.treesitter,
  }, {
	  "nvim-tree/nvim-tree.lua",
	  opts = overrides.nvimtree,
  }, {
	  "lewis6991/gitsigns.nvim",
	  opts = overrides.gitsigns,
  }, {
	  "hrsh7th/nvim-cmp",
	  opts = overrides.cmp,
  }, {
	  "fatih/vim-go"
  }, {
	  "nvim-web-devicons"
  }, {
    "ray-x/go.nvim",
    dependencies = {
      "ray-x/guihua.lua",
    },
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
  },
}
