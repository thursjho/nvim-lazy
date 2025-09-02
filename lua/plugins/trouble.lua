return {
  {
    "folke/trouble.nvim",
    opts = {
      modes = {
        symbols = {
          win = {
            type = "split",
            relative = "win", -- relative to current window
            position = "right", -- right side
            size = 70, -- 30% of the window
          },
          filter = {
            any = {
              kind = {
                "Class",
                "Constructor",
                "Enum",
                "Field",
                "Function",
                "Interface",
                "Method",
                "Module",
                "Namespace",
                "Package",
                "Property",
                "Struct",
                "Trait",
                "Constant",
                "Variable",
              }
            }
          }
        }
      }
    }
  }
}
