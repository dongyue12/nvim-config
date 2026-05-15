return {
  { "mg979/vim-visual-multi", event = "VeryLazy", config = function()
    vim.keymap.set("n", "<C-d>", "<C-N>", { desc = "多光标选中下一个相同词" })
    vim.keymap.set("v", "<C-d>", "<C-N>", { desc = "多光标选中下一个相同词" })
  end },
}
