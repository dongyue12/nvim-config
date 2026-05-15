return {
  { "folke/noice.nvim", event = "VeryLazy", dependencies = { "MunifTanjim/nui.nvim" }, config = function()
    require("noice").setup({
      lsp = { progress = { enabled = true }, override = { "vim.lsp.protocol.Methods" } },
      presets = { bottom_search = true, command_palette = true, long_message_to_split = true },
    })
  end },
  { "folke/trouble.nvim", cmd = "Trouble", config = function()
    require("trouble").setup()
    vim.keymap.set("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", {})
    vim.keymap.set("n", "<leader>xw", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", {})
  end },
  { "lukas-reineke/indent-blankline.nvim", config = function()
    require("ibl").setup()
  end },
}
