return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
       'b0o/schemastore.nvim',
       { 'j-hui/fidget.nvim', opts = {} },


    },
    opts = {
      diagnostics = {
        virtual_text = false,
      },
      servers = {
        -- pyright = {}
        basedpyright = {
          mason = true,
          settings = {
            python = {
              analysis = {
                autoSearchPaths = true,
                typeCheckingMode = "standard",
                diagnosticMode = 'workspace',
                diagnosticSeverityOverrides = {
                  -- reportUnknownVariableType = "none",
                  reportUnknownVariableType = "false",
                  reportUnknownMemberType = false,
                  reportUnknownParameterType = false,
                  reportMissingParameterType = false,
                  reportDeprecated = "false",
                  reportMissingTypeArgument = false,
                  reportAny = "false",
                },
              },
            },
          },
        },
      },
    },
  },
}


-- return {
--   {
--     "neovim/nvim-lspconfig",
--     opts = {
--       diagnostics = {
--         virtual_text = false,
--       },
--       servers = {
--         -- pyright = {}
--         basedpyright = {
--           mason = true,
--           settings = {
--             python = {
--               analysis = {
--                 typeCheckingMode = "standard",
--                 diagnosticSeverityOverrides = {
--                   -- reportUnknownVariableType = "none",
--                   reportUnknownVariableType = "false",
--                   reportUnknownMemberType = false,
--                   reportUnknownParameterType = false,
--                   reportMissingParameterType = false,
--                   reportDeprecated = "false",
--                   reportMissingTypeArgument = false,
--                   reportAny = "false",
--                 },
--               },
--             },
--           },
--         },
--       },
--     },
--   },
-- }
