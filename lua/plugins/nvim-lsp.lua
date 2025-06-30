return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      basedpyright = {
        settings = {
          basedpyright = {
            venvPath = ".",
            venv = "venv", -- or the actual venv folder name
            analysis = {
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
              extraPaths = { "src" }, -- only if needed
            },
          },
        },
      },
    },
  },
}
