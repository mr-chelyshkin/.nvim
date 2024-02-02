local M = {}

M.ui = {
    theme = "github_light",

    hl_override = {
        Comment = {
            italic = true,
        },
    },
    hl_add = {
        NvimTreeOpenedFolderName = { fg = "green", bold = true },
    },
}

M.options = {
  -- disable cursor styling 
  guicursor = "",
  cursorline = false,

  -- so that `` is visible in markdown files 
  conceallevel = 0,

  -- number of of screen lines to use for the command line 
  cmdheight = 2,

  -- relative numbers from line cursor is on 
  relativenumber = true,

  -- highlight all matches of previous search pattern 
  hlsearch = true,

  -- highlight matches of current search pattern as it is typed 
  incsearch = true,

  -- minimal number of screen lines to keep above and below the cursor
  scrolloff = 8,

  -- number of spaces to insert for a tab 
  tabstop = 2,

  -- number of spaces inserted for each indentation
  shiftwidth = 2,

  -- keep undo history between sessions
  undofile = true,

  -- other
  swapfile = false,
  backup = false,
  writebackup = false,
}

return M
