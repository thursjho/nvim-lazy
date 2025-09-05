return {
  -- Diffview for git diffs
  {
    'sindrets/diffview.nvim',
    keys = {
      -- TODO: fix conflict
      { '<leader>gdo', '<cmd>DiffviewOpen<cr>', desc = 'Diffview Open' },
      { '<leader>gdc', '<cmd>DiffviewClose<cr>', desc = 'Diffview Close' },
      { '<leader>gdh', '<cmd>DiffviewFileHistory<cr>', desc = 'Diffview File History' },
      { '<leader>gdH', '<cmd>DiffviewFileHistory %<cr>', desc = 'Diffview Current File History' },
    },
  },
}
