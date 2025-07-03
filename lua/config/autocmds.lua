-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

local function set_diff_highlights()
  vim.cmd([[
    highlight DiffAdd    guibg=#157032 guifg=NONE
    highlight DiffChange guibg=#1f2231 guifg=NONE
    highlight DiffDelete guibg=#a1153a guifg=NONE
    highlight DiffText   guibg=#394b70 guifg=NONE
  ]])
end

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = set_diff_highlights,
})
