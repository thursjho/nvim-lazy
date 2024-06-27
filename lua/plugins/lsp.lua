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
                diagnosticSeverityOverrides = {
                  -- reportUnknownVariableType = "none",
                  reportUnknownVariableType = "false",
                },
              },
            },
          },
        },
      },
    },
  },
}
