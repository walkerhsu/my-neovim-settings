return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      basedpyright = {
        settings = {
          basedpyright = {
            -- venvPath = ".",
            -- venv = ".venv", -- or the actual venv folder name
            analysis = {
              autoSearchPaths = true,
              useLibraryCodeForTypes = true,
              extraPaths = { "src" }, -- only if needed
              typeCheckingMode = "basic", -- Options: "off", "basic", "standard", "strict", "recommended", "all"
              diagnosticMode = "openFilesOnly", -- Options: "off", "openFilesOnly", "workspace"
              -- Further diagnostic severity overrides can be added here
              -- diagnosticSeverityOverrides = {
              --   reportUnusedVariable = "warning",
              --   reportMissingImports = "error",
              -- },
            },
          },
        },
      },
      jsonls = {
        cmd = { "vscode-json-language-server", "--stdio" },
        filetypes = { "json", "jsonc" },
        root_markers = { ".git" },
        init_options = {
          provideFormatter = false, -- 🚫 disable jsonls formatter
        },
      },
    },
  },
}
