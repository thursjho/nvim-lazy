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
      },
      -- layout = {
      --   terminal = {
      --     box = "vertical",
      --   }
      -- }
    },
    keys = {
      { '<C-p>', function() Snacks.picker.commands() end, desc = 'Commands' },
      { '<leader>cL', '<cmd>LspInfo<cr>', desc = 'Lsp Clients' },
      { "<leader>gi", function() Snacks.picker.gh_issue() end, desc = "GitHub Issues (open)" },
      { "<leader>gI", function() Snacks.picker.gh_issue({ state = "all" }) end, desc = "GitHub Issues (all)" },
      { "<leader>gp", function() Snacks.picker.gh_pr() end, desc = "GitHub Pull Requests (open)" },
      { "<leader>gP", function() Snacks.picker.gh_pr({ state = "all" }) end, desc = "GitHub Pull Requests (all)" },
      -- { '<C-\\>', function()
      --   Snacks.terminal({
      --     direction = "vertical",
      --     size = 0.4
      --   })
      -- end, desc = "Terminal Vertical"
      -- },
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
