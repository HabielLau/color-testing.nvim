local colors = require("color-testing.colors").setup({ transform = true })
local config = require("color-testing.config").options

local color_testing = {}

color_testing.normal = {
  a = { bg = colors.blue, fg = colors.black },
  b = { bg = colors.base0, fg = colors.base04 },
  c = { bg = colors.bg_statusline, fg = colors.fg },
}

color_testing.insert = {
  a = { bg = colors.green, fg = colors.black },
}

color_testing.command = {
  a = { bg = colors.yellow, fg = colors.black },
}

color_testing.visual = {
  a = { bg = colors.magenta, fg = colors.black },
}

color_testing.replace = {
  a = { bg = colors.red, fg = colors.black },
}

color_testing.terminal = {
  a = { bg = colors.green, fg = colors.black },
}

color_testing.inactive = {
  a = {
    bg = config.hide_inactive_statusline and colors.none or colors.bg_statusline,
    fg = config.hide_inactive_statusline and colors.bg or colors.blue,
    sp = config.hide_inactive_statusline and colors.border or colors.none,
    underline = config.hide_inactive_statusline,
  },
  b = {
    bg = config.hide_inactive_statusline and colors.none or colors.bg_statusline,
    fg = config.hide_inactive_statusline and colors.bg or colors.fg,
    sp = config.hide_inactive_statusline and colors.border or colors.none,
    underline = config.hide_inactive_statusline,
    gui = "bold",
  },
  c = {
    bg = config.hide_inactive_statusline and colors.none or colors.bg_statusline,
    fg = config.hide_inactive_statusline and colors.bg or colors.fg,
    sp = config.hide_inactive_statusline and colors.border or colors.none,
    underline = config.hide_inactive_statusline,
  },
}

if config.lualine_bold then
  for _, mode in pairs(color_testing) do
    mode.a.gui = "bold"
  end
end

return color_testing
