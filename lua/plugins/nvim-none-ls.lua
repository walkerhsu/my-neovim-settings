return {
  "nvimtools/none-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "mason.nvim" },
  init = function()
    -- Register none-ls as a formatter in LazyVim
    LazyVim.on_very_lazy(function()
      LazyVim.format.register({
        name = "none-ls.nvim",
        priority = 200, -- higher than Conform
        primary = true, -- main formatter
        format = function(buf)
          return LazyVim.lsp.format({
            bufnr = buf,
            filter = function(client)
              return client.name == "null-ls"
            end,
          })
        end,
        sources = function(buf)
          local ret = require("null-ls.sources").get_available(vim.bo[buf].filetype, "NULL_LS_FORMATTING") or {}
          return vim.tbl_map(function(source)
            return source.name
          end, ret)
        end,
      })
    end)
  end,
  opts = function(_, opts)
    local nls = require("null-ls")

    -- Root detection
    opts.root_dir = opts.root_dir
      or require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git")

    -- Add formatters / diagnostics
    opts.sources = vim.list_extend(opts.sources or {}, {
      -- Prettier only for JS/TS
      nls.builtins.formatting.prettier.with({
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "json", "jsonc" },
      }),

      -- Keep other formatters (for other languages)
      nls.builtins.formatting.fish_indent,
      nls.builtins.diagnostics.fish,
      nls.builtins.formatting.stylua,
      nls.builtins.formatting.shfmt,

      nls.builtins.formatting.black,
    })
  end,
}
