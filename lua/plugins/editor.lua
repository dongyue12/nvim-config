return {
  { "windwp/nvim-autopairs", event = "InsertEnter", config = true },
  { "numToStr/Comment.nvim", config = function()
    require("Comment").setup()
  end },
  { "folke/which-key.nvim", event = "VeryLazy", config = function()
    require("which-key").setup()
  end },
}
