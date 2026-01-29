-- if true then return {} end

return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- use latest release, remove to use latest commit
  -- ft = "markdown",
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    legacy_commands = false, -- this will be removed in the next major release
    workspaces = {
      {
        name = "work",
        path = os.getenv('OBSIDIAN_VAULTS_DIR'),
      },
    },
    picker = {
      name = "snacks"
    }
  },
  config = function ()
    require("obsidian").setup {
      callbacks = {
          enter_note = function(note)
          vim.keymap.set("n", "<leader><CR>", require("obsidian.api").smart_action, { buffer = true })
          -- vim.keymap.set("n", "<leader>ch", "<cmd>Obsidian toggle_checkbox<cr>", {
          --   buffer = true,
          --   desc = "Toggle checkbox",
          -- })
        end,
      },
      legacy_commands = true, -- this will be removed in the next major release
      workspaces = {
        {
          name = "work",
          path = os.getenv('OBSIDIAN_VAULTS_DIR'),
        },
      },
      picker = {
        name = "snacks"
      }
    }
  end,
  keys = {
    { '<leader>Os', '<cmd>Obsidian search<cr>', desc = 'Obsidian Search' },
  }
  -- init = function ()
  --   vim.api.nvim_create_autocmd("ObsidianUser", {
  --     pattern = "ObsidianNoteEnter",
  --     callback = function(args)
  --       vim.keymap.set("n", "<leader><CR>", require("obsidian.api").smart_action, { buffer = true })
  --     end,
  --   })
  -- end
}
