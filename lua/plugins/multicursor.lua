return {
  "mg979/vim-visual-multi",
  lazy = false,
  config = function()
    vim.keymap.set("n", "<C-d>", "<Plug>(VM-Add-Cursor-Down)")
    vim.keymap.set("x", "<C-d>", "<Plug>(VM-Add-Cursor-Down)")
  end,
}
