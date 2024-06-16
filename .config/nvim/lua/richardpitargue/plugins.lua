require("lazy").setup({
  {"catppuccin/nvim", name = "catppuccin", priority = 1000},
  {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
})
