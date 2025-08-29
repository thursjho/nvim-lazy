return {
  -- Oil.nvim: simple file explorer that replaces netrw
  {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- optional, for file icons
    keys = {
      { '-', '<cmd>Oil<CR>', desc = 'Open parent directory (Oil)' },
      {
        '<leader>i',
        function()
          require('oil').toggle_float()
        end,
        desc = 'Oil File Explorer',
      },
    },
  },
}