return {
  {
    "folke/snacks.nvim",
    opts = {
      scroll = { enabled = false },
      indent = { enabled = true, only_scope = true, only_current = true },
      picker = {
        lsp_references = {
          format = "filename_first",
          -- live = false,
        }
      }
    },
    keys = {
      { '<C-p>', function() Snacks.picker.commands() end, desc = 'Commands' },
      { '<leader>N', function()
        if Snacks.config.picker and Snacks.config.picker.enabled then
          Snacks.picker.notifications()
        else
          Snacks.notifier.show_history()
        end
      end, desc = 'Notification History' },
    }
  }
}
