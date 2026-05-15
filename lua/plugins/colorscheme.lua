return {
  { "folke/tokyonight.nvim", priority = 1000, config = function()
    vim.cmd.colorscheme("tokyonight-storm")
    vim.api.nvim_set_hl(0, "Visual", { bg = "#3b4261", fg = "NONE" })
  end },
}
