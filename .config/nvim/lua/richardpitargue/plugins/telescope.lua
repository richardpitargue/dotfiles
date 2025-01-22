return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.8",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", run = "make" },
  },
  config = function()
    local builtin = require("telescope.builtin")
    
    vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
    vim.keymap.set("n", "<leader>gf", builtin.live_grep, { desc = "Telescope live grep" })
    vim.keymap.set("n", "<leader>wf", builtin.grep_string, { desc = "Telescope grep string" })
    vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
    vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

    local telescope = require("telescope")
    telescope.setup({})
    telescope.load_extension("fzf")
  end,
}

