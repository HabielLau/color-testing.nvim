local colors = require("color-testing.colors").setup({ transform = true })

local color_testing = {}

color_testing.normal = {
  left = { { colors.black, colors.blue }, { colors.blue, colors.base02 } },
  middle = { { colors.fg, colors.bg_statusline } },
  right = { { colors.black, colors.blue }, { colors.base02, colors.base1 } },
  error = { { colors.black, colors.error } },
  warning = { { colors.black, colors.warning } },
}

color_testing.insert = {
  left = { { colors.black, colors.green }, { colors.blue, colors.base02 } },
}

color_testing.visual = {
  left = { { colors.black, colors.magenta }, { colors.blue, colors.base02 } },
}

color_testing.replace = {
  left = { { colors.black, colors.red }, { colors.blue, colors.base02 } },
}

color_testing.inactive = {
  left = { { colors.blue, colors.bg_statusline }, { colors.fg, colors.base02 } },
  middle = { { colors.base02, colors.bg_statusline } },
  right = { { colors.base02, colors.bg_statusline }, { colors.fg, colors.base02 } },
}

color_testing.tabline = {
  left = { { colors.fg, colors.bg_highlight }, { colors.fg, colors.base02 } },
  middle = { { colors.base02, colors.bg_statusline } },
  right = { { colors.base02, colors.bg_statusline }, { colors.fg, colors.base02 } },
  tabsel = { { colors.blue, colors.base02 }, { colors.fg, colors.base02 } },
}

return color_testing
