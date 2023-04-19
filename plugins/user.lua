return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
      {
        'neovim/nvim-lspconfig'
      },
      -- Markdown highlighting
      {
        'godlygeek/tabular'
      },
      {
        'preservim/vim-markdown'
      },
      {
        "simrat39/rust-tools.nvim",
        after = { "mason-lspconfig.nvim" },
        -- Is configured via the server_registration_override installed below!
        config = function()
          require("rust-tools").setup {
            server = astronvim.lsp.server_settings "rust_analyzer",
            tools = {
              --inlay_hints = {
              -- parameter_hints_prefix = "  ",
              --  other_hints_prefix = "  ",
              --},
            },
          }
          require('rust-tools').inlay_hints.enable()
        end,
      },
      {
        'mfussenegger/nvim-dap'
      },
      -- nice cmdline and 
    {
      "lervag/vimtex"
    },
    {
      "mtdl9/vim-log-highlighting"
    },
}
