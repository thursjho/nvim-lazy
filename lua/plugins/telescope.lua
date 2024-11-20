return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- { "<C-j>", function(bufnr) require("telescope.actions").move_selection_next(bufnr) end, desc = "Move selection next" },
    -- { "<C-k>", function(bufnr) require("telescope.actions").move_selection_previous(bufnr) end, desc = "Move selection prev" },
    -- disable the keymap to grep files
    --   {"<leader>/", false},
    --   -- change a keymap
    --   { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find Files" },
    --   -- add a keymap to browse plugin files
    --   {
    --     "<leader>fp",
    --     function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
    --     desc = "Find Plugin File",
    --   },
    -- },
  },
}
