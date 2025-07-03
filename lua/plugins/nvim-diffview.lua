return {
  "sindrets/diffview.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  cmd = { "DiffviewOpen", "DiffviewFileHistory" },
  config = function()
    require("diffview").setup()

    -- Optional: keybind
    vim.keymap.set("n", "<leader>gd", ":DiffviewOpen<CR>", { desc = "Open Git DiffView" })
  end,
}
