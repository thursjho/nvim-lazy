return {
  {
    "neovim/nvim-lspconfig",
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
                typeCheckingMode = "standard",
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
