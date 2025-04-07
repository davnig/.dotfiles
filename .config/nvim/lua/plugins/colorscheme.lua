local colors = require("colors")
return {
  -- Configure LazyVim to load gruvbox
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      color_overrides = {
        all = {
          base = colors.bg_dark,
          mantle = colors.bg_light,
          -- crust = colors.bg_light_highlight,
          surface0 = colors.bg_dark_highlight,

          mauve = colors.keyword,
          blue = colors.method_or_function,
        },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },
  -- {
  --   "nickkadutskyi/jb.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {},
  --   config = function()
  --     -- require("jb").setup({transparent = true})
  --     vim.cmd("colorscheme jb")
  --   end,
  -- },
}
