-- p import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

-- get lualine onedark theme
local lualine_OceanicNext = require("lualine.themes.OceanicNext")

-- new colors for theme
local new_colors = {
  blue = "#65D1FF",
  green = "#3EFFDC",
  violet = "#FF61EF",
  yellow = "#FFDA7B",
  black = "#000000",
}

-- change catppuccin theme colors
lualine_OceanicNext.normal.a.bg = new_colors.blue
lualine_OceanicNext.insert.a.bg = new_colors.green
lualine_OceanicNext.visual.a.bg = new_colors.violet
lualine_OceanicNext.command = {
  a = {
    gui = "bold",
    bg = new_colors.yellow,
    fg = new_colors.black, -- black
  },
}

-- configure lualine with modified theme
lualine.setup({
  options = {
    theme = lualine_OceanicNext,
  },
})
