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
      macchiato = {
        base = "#0f0f0f",
        mantle = "#1f1f1f",
        crust = "#2f2f2f",
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
