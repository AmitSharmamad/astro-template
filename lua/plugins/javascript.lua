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
      require'lspconfig'.tsserver.setup{}
    end
  },
}
