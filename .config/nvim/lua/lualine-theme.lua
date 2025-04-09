-- Taken from:
-- https://github.com/AlexvZyl/nordic.nvim/blob/main/lua/lualine/themes/nordic.lua

local palette = require("colors")

return {
  normal = {
    a = { bg = palette.vim_normal, fg = palette.black0, gui = "bold" },
    b = { bg = palette.gray1, fg = palette.white1 },
    c = { bg = palette.bg_statusline, fg = palette.white0 },
  },

  insert = {
    a = { bg = palette.vim_insert, fg = palette.black0, gui = "bold" },
    b = { bg = palette.gray1, fg = palette.white1 },
    c = { bg = palette.bg_statusline, fg = palette.white0 },
  },

  command = {
    a = { bg = palette.cyan.bright, fg = palette.black0, gui = "bold" },
    b = { bg = palette.gray1, fg = palette.white1 },
    c = { bg = palette.bg_statusline, fg = palette.white0 },
  },

  visual = {
    a = { bg = palette.vim_visual, fg = palette.black0, gui = "bold" },
    b = { bg = palette.gray1, fg = palette.white1 },
    c = { bg = palette.bg_statusline, fg = palette.white0 },
  },

  replace = {
    a = { bg = palette.vim_replace, fg = palette.black0, gui = "bold" },
    b = { bg = palette.gray1, fg = palette.white1 },
    c = { bg = palette.bg_statusline, fg = palette.white0 },
  },

  terminal = {
    a = { bg = palette.blue2, fg = palette.black0, gui = "bold" },
    b = { bg = palette.gray1, fg = palette.white1 },
    c = { bg = palette.bg_statusline, fg = palette.white0 },
  },

  inactive = {
    a = { bg = palette.gray2, fg = palette.black0, gui = "bold" },
    b = { bg = palette.gray1, fg = palette.white1 },
    c = { bg = palette.bg_statusline, fg = palette.white0 },
  },
}
