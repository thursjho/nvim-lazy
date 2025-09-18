return {
  -- Claude Code - AI Assistant for Neovim
  {
    'greggh/claude-code.nvim',
    enabled = false,
    requires = {
      'nvim-lua/plenary.nvim', -- Required for git operations
    },
    config = function()
      require('claude-code').setup({
        window = {
          position = "vertical",
        },
        command = "ccr code"
      })
    end,
    keys = {
      { "<leader>a",  nil,                              desc = "AI/Claude Code" },
      { "<leader>ac", "<cmd>ClaudeCode<cr>",            desc = "Toggle Claude" },
      { "<leader>aC", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
      { "<leader>ar", "<cmd>ClaudeCode --resume<cr>",   desc = "Resume Claude" },
    }
  },
  {
    'coder/claudecode.nvim',
    dependencies = {
      "folke/snacks.nvim", -- optional
    },
    lazy = false,
    -- enabled = false,
    cmd = {
      'ClaudeCode',
      'ClaudeCodeNew',
      'ClaudeCodeComplete',
      'ClaudeCodeEdit',
    },
    keys = {
      { "<leader>a",  nil,                              desc = "AI/Claude Code" },
      { "<leader>ac", "<cmd>ClaudeCode<cr>",            desc = "Toggle Claude" },
      { "<leader>af", "<cmd>ClaudeCodeFocus<cr>",       desc = "Focus Claude" },
      { "<leader>ar", "<cmd>ClaudeCode --resume<cr>",   desc = "Resume Claude" },
      { "<leader>aC", "<cmd>ClaudeCode --continue<cr>", desc = "Continue Claude" },
      { "<leader>am", "<cmd>ClaudeCodeSelectModel<cr>", desc = "Select Claude model" },
      { "<leader>ab", "<cmd>ClaudeCodeAdd %<cr>",       desc = "Add current buffer" },
      { "<leader>as", "<cmd>ClaudeCodeSend<cr>",        mode = "v",                  desc = "Send to Claude" },
      {
        "<leader>as",
        "<cmd>ClaudeCodeTreeAdd<cr>",
        desc = "Add file",
        ft = { "NvimTree", "neo-tree", "oil", "minifiles" },
      },
      -- Diff management
      { "<leader>aa", "<cmd>ClaudeCodeDiffAccept<cr>", desc = "Accept diff" },
      { "<leader>ad", "<cmd>ClaudeCodeDiffDeny<cr>",   desc = "Deny diff" },
      { "<C-,>", "<cmd>ClaudeCodeFocus<cr>", desc = "Claude Code (Ctrl+,)", mode = { "n", "x" } },

      { "<C-h>", [[<C-\><C-n><C-w>h]], mode = { "t" }},
      { "<C-j>", [[<C-\><C-n><C-j>h]], mode = { "t" }},
      { "<C-k>", [[<C-\><C-n><C-k>h]], mode = { "t" }},
      { "<C-l>", [[<C-\><C-n><C-l>h]], mode = { "t" }},
    },
    opts = {
      -- Authentication - supports both direct API and router
      anthropic_api_key = nil, -- Will use environment variable ANTHROPIC_API_KEY
      
      --   Model configuration - can be overridden by environment variables
      -- model = vim.env.ANTHROPIC_MODEL or 'claude-sonnet-4-20250514',
      -- max_tokens = 20000,
      -- temperature = 0,
      
      -- UI configuration
      window_opts = {
        height = 0.7,
        width = 0.8,
        relative = 'editor',
        border = 'rounded',
        title = 'Claude Code',
        title_pos = 'center',
      },

      terminal_cmd = vim.env.CLAUDE_CODE_CMD or 'claude',
      -- terminal_cmd = 'ccr code',
      terminal = {
        split_side = "right",
        split_width_percentage = 0.3,
        provider = 'snacks'

      },
      
      -- System message for Claude
--       system_message = [[
-- You are an expert software development assistant with broad knowledge across all programming languages and frameworks.
--
-- Guidelines:
-- - Write code and comments in English
-- - Provide explanations and guidance in Korean
-- - Be language and framework agnostic - help with any technology
-- - Focus on best practices, clean code principles, and practical solutions
-- - When refactoring, prioritize readability, performance, and maintainability
-- - Use appropriate documentation styles for each language (JSDoc, docstring, etc.)
-- - Provide context-aware suggestions based on the code being analyzed
-- - For edit requests, provide only the modified code without explanations unless asked
-- ]],

      -- Environment Variables Support:
      -- ANTHROPIC_API_KEY - API key for authentication
      -- ANTHROPIC_BASE_URL - Custom base URL (e.g., company router)
      -- ANTHROPIC_MODEL - Override model selection
      -- ANTHROPIC_CUSTOM_HEADERS - Additional headers for routing
      -- HTTP_PROXY/HTTPS_PROXY - Proxy configuration
    },
    config = function(_, opts)
      -- Set up Claude Code with provided options
      local ok, claudecode = pcall(require, 'claudecode')
      if ok then
        claudecode.setup(opts)
      else
        vim.notify('ClaudeCode plugin not found or failed to load', vim.log.levels.WARN)
      end

      -- require('modules.claude-context-picker').setup({
      --   keymaps = {
      --     pick_context = "<leader>apf",
      --     pick_files = "<leader>apF",
      --     add_current = "<leader>apb",
      --     add_lines = "<leader>apl",
      --     symbols_lines = "<leader>aps",
      --     symbols_files = "<leader>apS",
      --     symbol_references = "<leader>apr",
      --     dependencies = "<leader>apd",
      --   }
      -- })
    end,
  },
}
