function TechnicolorRainbow(color, daytime)
  color = color or "tokyonight"
  daytime = daytime or "light"
  vim.cmd.colorscheme(color)
  vim.opt.background = daytime
end

TechnicolorRainbow()

function ClojureColors()
  TechnicolorRainbow("alabaster")
  vim.opt.background = 'light'
end
