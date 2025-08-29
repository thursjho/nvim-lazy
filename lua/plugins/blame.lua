return {
  {
    "FabijanZulj/blame.nvim",
    -- lazy = false,
    keys = {
      { '<leader>gb', '<cmd>BlameToggle<cr>', desc = 'Git Blame Toggle' },
    },
    config = function()
      require('blame').setup {}
    end,
  },
}
