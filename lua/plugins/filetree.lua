return {
  { "nvim-tree/nvim-tree.lua", dependencies = { "nvim-tree/nvim-web-devicons" }, config = function()
    require("nvim-tree").setup({
      update_focused_file = { enable = true },
      git = { enable = true },
    })
    vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", {})
  end },
}
