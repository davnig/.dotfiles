-- Taken from:
-- https://github.com/AlexvZyl/nordic.nvim/blob/main/lua/nordic/colors/nordic.lua

return {
  -- START custom colors
  bg_dark = "#1E2021",
  bg_dark_highlight = "#26282D",
  bg_light = "#2B2D31",
  bg_light_highlight = "#42444A",
  fg_text = "#BBBEC4",
  -- END custom colors

  none = "NONE",

  -- Blacks. Not in base Nord.
  black0 = "#191D24",
  black1 = "#1E222A",
  -- Slightly darker than bg.  Very useful for certain popups
  black2 = "#222630",

  -- Grays
  -- This color is used on their website's dark theme.
  gray0 = "#242933", --bg
  -- Polar Night.
  gray1 = "#2E3440",
  gray2 = "#3B4252",
  gray3 = "#434C5E",
  gray4 = "#4C566A",

  -- A light blue/gray.
  -- From @nightfox.nvim.
  gray5 = "#60728A",

  -- Dim white.
  -- default fg, has a blue tint.
  white0_normal = "#BBC3D4",
  -- less blue tint
  white0_reduce_blue = "#C0C8D8",

  -- Snow storm.
  white1 = "#D8DEE9",
  white2 = "#E5E9F0",
  white3 = "#ECEFF4",

  -- Frost.
  blue0 = "#5E81AC",
  blue1 = "#81A1C1",
  blue2 = "#88C0D0",

  cyan = {
    base = "#8FBCBB",
    bright = "#9FC6C5",
    dim = "#80B3B2",
  },

  -- Aurora.
  -- These colors are used a lot, so we need variations for them.
  -- Base colors are from original Nord palette.
  red = {
    base = "#BF616A",
    bright = "#C5727A",
    dim = "#B74E58",
  },
  orange = {
    base = "#D08770",
    bright = "#D79784",
    dim = "#CB775D",
  },
  yellow = {
    base = "#EBCB8B",
    bright = "#EFD49F",
    dim = "#E7C173",
  },
  green = {
    base = "#A3BE8C",
    bright = "#B1C89D",
    dim = "#97B67C",
  },
  magenta = {
    base = "#B48EAD",
    bright = "#BE9DB8",
    dim = "#A97EA1",
  },
}
