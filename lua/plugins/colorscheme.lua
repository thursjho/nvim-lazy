return {
  {
    'xiantang/darcula-dark.nvim',
    requires = {"nvim-treesitter/nvim-treesitter"}
  },
  {
    'rebelot/kanagawa.nvim',
    requires = {"nvim-treesitter/nvim-treesitter"}
  },
  {
    'catppuccin/nvim',
    -- tag = "v1.10.0",
    requires = {"nvim-treesitter/nvim-treesitter"},
    opts = function(_, opts)
      local module = require("catppuccin.groups.integrations.bufferline")
      if module then
        module.get = module.get_theme
      end
      return opts
    end,
  },
  {
    'projekt0n/github-nvim-theme',
    requires = {"nvim-treesitter/nvim-treesitter"}
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-wave"
      -- colorscheme = "github_dark"
      -- colorscheme = "catppuccin-frappe"
    }
  }
}
