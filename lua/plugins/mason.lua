-- Customize Mason plugins

---@type LazySpec
return {
  -- use mason-lspconfig to configure LSP installations
  {
    "williamboman/mason-lspconfig.nvim",
    -- overrides `require("mason-lspconfig").setup(...)`
    opts = {
      ensure_installed = {
        "lua_ls",
        -- add more arguments for adding more language servers
      },
    },
  },
  -- use mason-null-ls to configure Formatters/Linter installation for null-ls sources
  {
    "jay-babu/mason-null-ls.nvim",
    -- overrides `require("mason-null-ls").setup(...)`
    opts = {
      ensure_installed = {
        "stylua",
        -- add more arguments for adding more null-ls sources
      },
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    -- overrides `require("mason-nvim-dap").setup(...)`
    opts = {
      ensure_installed = {
        "python",
        -- add more arguments for adding more debuggers
      },
    },
  },
  -- {
  --   "folke/noice.nvim",
  --   event = "VeryLazy",
  --   -- REMOVE THIS once this issue is fixed: https://github.com/yioneko/vtsls/issues/159
  --   opts = {
  --     routes = {
  --       {
  --         filter = {
  --           event = "notify",
  --           find = "Request textDocument/inlayHint failed",
  --         },
  --         opts = { skip = true },
  --       },
  --     },
  --   },
  -- },
}
