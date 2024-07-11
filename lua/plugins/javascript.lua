return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server"
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require'lspconfig'.tsserver.setup{}
    end
  },
}
