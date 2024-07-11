return {
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    opts = {
      ensure_installed = {
        "typescript-language-server"
      },
    },
    config = function()
      require("mason-lspconfig").setup {
          ensure_installed = { "typescript-language-server" },
      }
      require'lspconfig'.tsserver.setup{}
    end
  },
}
