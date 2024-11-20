local M = { "smartinellimarco/nvcheatsheet.nvim" }

M.opts = {
  -- Default header
  header = {
    "                                      ",
    "                                      ",
    "                                      ",
    "█▀▀ █░█ █▀▀ ▄▀█ ▀█▀ █▀ █░█ █▀▀ █▀▀ ▀█▀",
    "█▄▄ █▀█ ██▄ █▀█ ░█░ ▄█ █▀█ ██▄ ██▄ ░█░",
    "                                      ",
    "                                      ",
    "                                      ",
  },
  -- Example keymaps (this doesn't create any)
  keymaps = {
    -- ["Oil"] = {
    --   { "Toggle oil (closes without saving)", "<leader>q" },
    --   { "Select entry", "⏎" },
    --   { "Select entry", "l" },
    --   { "Go to parent", "h" },
    --   { "Open vertical split", "⌃v" },
    --   { "Open horizontal split", "⌃x" },
    --   { "Go to current working directory", "." },
    -- },
    -- ["Cmp"] = {
    --   { "Select entry", "⌃f" },
    --   { "Next result - Jump to next snippet placeholder", "⌃n" },
    --   { "Previous result - Jump to previous snippet placeholder", "⌃p" },
    --   { "Scroll up in preview", "⌃u" },
    --   { "Scroll down in preview", "⌃d" },
    --   { "Abort autocompletion", "⌃e" },
    -- },
    -- ["Comment"] = {
    --   { "Comment line toggle", "gcc" },
    --   { "Comment block toggle", "gbc" },
    --   { "Comment visual selection", "gc" },
    --   { "Comment visual selection using block delimiters", "gb" },
    --   { "Comment out text object line wise", "gc<motion>" },
    --   { "Comment out text object block wise", "gb<motion>" },
    --   { "Add comment on the line above", "gcO" },
    --   { "Add comment on the line below", "gco" },
    --   { "Add comment at the end of line", "gcA" },
    -- },
    ["lsp"] = {
      { "Go to definition", "gd" },
      { "Go to type definition", "gy" },
      { "Go to declaration", "gD" },
      { "Go to implementation", "gI" },
      { "Go to references", "gr" },
      { "Hover", "K" },
      { "Rename", "<leader>cr" },
      { "Code actions", "<leader>ca" },
      { "Next Reference", "]]" },
      { "Symbols (Trouble)", "<leader>cs" },
      { "LSP refs/defs/.. (Trouble)", "<leader>cS" },
      { "Go to Symbols", "<leader>ss" },
      { "Go to Symbols (Workspace)", "<leader>sS" },
    },
    ["fix"] = {
      { "Next diagnostic", "]d" },
      { "Next error", "]e" },
      { "Next warning", "]w" },
      { "Fix current diagnostic", "<leader>qf" },
      { "Document Diagnostics", "<leader>sd" },
      { "Workspace Diagnostics", "<leader>sD" },
    },
    ["find"] = {
      { "Find Files (Root Dir)", "<leader><space>" },
      { "Find Files (Root Dir)", "<leader>ff" },
      { "Find Files (git-files)", "<leader>fg" },
      { "Recent", "<leader>fr" },
      { "Recent (cwd)", "<leader>fR" },
      { "git commits", "<leader>gc" },
    },
    ["grep"] = {
      { "Grep (Root Dir)", "<leader>/" },
      { "word", "<leader>sw (Root Dir)" },
      { "word", "<leader>sW (cwd)" },
      { "comands", "<leader>sC" },
      { "command history", "<leader>sc" },
      { "keymaps history", "<leader>sk" },

      { "Mark", "<leader>sm" },
      { "Resume", "<leader>sR" },
    },
    ["flash"] = {
      { "Flash", "s" },
      { "Flash Treesitter", "S" },
      { "Treesitter Search", "R" },
    },
    ["neotree"] = {
      { "Toggle NeoTree (Root Dir)", "<leader>e" },
      { "Toggle NeoTree (cwd)", "<leader>E" },
      { "Git Explorer", "<leader>ge" },
      { "open", "<cr>" },
      { "open_split", "S" },
      { "open_vsplit", "s" },
      { "add", "a" },
      { "add directory", "A" },
      { "delete", "d" },
      { "rename", "r" },
      { "help", "?" },
    },
  },
}

function M.config(_, opts)
  local nvcheatsheet = require("nvcheatsheet")

  nvcheatsheet.setup(opts)

  -- You can also close it with <Esc>
  vim.keymap.set("n", "<F1>", nvcheatsheet.toggle)
end

return M

-- vim: ts=2 sts=2 sw=2 et
