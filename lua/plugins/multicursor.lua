return {
  "mg979/vim-visual-multi",
  lazy = false,
  config = function()
    vim.keymap.set("n", "<C-d>", "<Plug>(VM-Find-Under)")
    vim.keymap.set("x", "<C-d>", "<Plug>(VM-Find-Subword-Under)")
  end,
}
