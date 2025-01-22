return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    
    lspconfig.elixirls.setup({
      cmd = { "/home/richard/utils/elixir-ls/release/language_server.sh" },
      capabilities = capabilities,
    })

    lspconfig.tailwindcss.setup({
      init_options = {
        userLanguages = {
          elixir = "html-eex",
          eelixir = "html-eex",
          heex = "html-eex",
        }
      },
    })
  end,
}
