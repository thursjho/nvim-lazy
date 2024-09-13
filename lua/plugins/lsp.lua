return {
  {
    "nvim-lspconfig",
    opts = {
      diagnostics = {
        virtual_text = false,
      },
      servers = {
        basedpyright = {
          settings = {
            python = {
              analysis = {
                typeCheckingMode = "off",
                diagnosticSeverityOverrides = {
                  -- reportUnknownVariableType = "none",
                  reportUnknownVariableType = "false",
                  reportUnknownMemberType = false,
                  reportUnknownParameterType = false,
                  reportMissingParameterType = false,
                },
              },
            },
          },
        },
      },
    },
  },
}
