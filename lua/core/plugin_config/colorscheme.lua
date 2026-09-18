vim.api.nvim_create_autocmd("OptionSet", {
  pattern = "background",
  callback = function()
    vim.cmd.colorscheme(vim.v.option_new == "dark" and "github_dark_default" or "github_light_default")
  end,
})
vim.cmd.colorscheme(vim.o.background == "dark" and "github_dark_default" or "github_light_default")

