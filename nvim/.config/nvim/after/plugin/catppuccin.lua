require("catppuccin").setup {
  background = { -- :h background
    light = "latte",
    dark = "macchiato",
  },
  custom_highlights = function(colors)
    return {
      WinSeparator = { fg = colors.flamingo },
    }
  end
}

