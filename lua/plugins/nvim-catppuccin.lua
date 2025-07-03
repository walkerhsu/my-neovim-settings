return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    background = { -- :h background
      light = "latte",
      dark = "macchiato",
    },
    no_italic = false,
    term_colors = true,
    transparent_background = false,
    styles = {
      comments = { "italic" },
      conditionals = {},
      loops = {},
      functions = {},
      keywords = { "italic" },
      strings = {},
      variables = {},
      numbers = {},
      booleans = {},
      properties = {},
      types = { "italic" },
    },
    color_overrides = {
      mocha = {
        base = "#000000",
        mantle = "#000000",
        crust = "#000000",
      },
    },
    integrations = {
      telescope = {
        enabled = true,
        style = "nvchad",
      },
      dropbar = {
        enabled = true,
        color_mode = true,
      },
    },
  },
}
