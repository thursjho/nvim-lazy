return {
  "jackielii/snacks-picker-items.nvim",
  lazy = false, -- Load immediately to cache first picker session
  dependencies = { "folke/snacks.nvim" },
  opts = {},
  keys = {
    { "]g", function() require("snacks-picker-items").navigate(1) end, desc = "Next picker item" },
    { "[g", function() require("snacks-picker-items").navigate(-1) end, desc = "Previous picker item" },
  },
}
