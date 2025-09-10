return {
  "mfussenegger/nvim-lint",
  opts = {
    -- Event to trigger linters
    events = { "BufWritePost", "BufReadPost", "InsertLeave" },
    linters_by_ft = {
      javascript = { 'eslint' },
      javascriptreact = { 'eslint' },
      typescript = { 'eslint' },
      typescriptreact = { 'eslint' },
      fish = { "fish" },
      dockerfile = { "hadolint" },
      python = { "ruff", "mypy" },
      markdown = { "markdownlint-cli2" },
      sh = { "shellcheck" },
      bash = { "shellcheck" },
      zsh = { "shellcheck" },
      yaml = { "yamllint" },
      ["yaml.ghaction"] = { "actionlint" },
      json = { "jsonlint" },
      jsonc = { "jsonlint" },
      html = { "htmllint", "markuplint" },
      css = { "stylelint" },
      scss = { "stylelint" },
      -- Use the "*" filetype to run linters on all filetypes.
      -- ['*'] = { 'global linter' },
      -- Use the "_" filetype to run linters on filetypes that don't have other linters configured.
      -- ['_'] = { 'fallback linter' },
      -- ["*"] = { "typos" },
    },
    -- LazyVim extension to easily override linter options
    -- or add custom linters.
    ---@type table<string,table>
    -- linters = {
      -- -- Example of using selene only when a selene.toml file is present
      -- selene = {
      --   -- `condition` is another LazyVim extension that allows you to
      --   -- dynamically enable/disable linters based on the context.
      --   condition = function(ctx)
      --     return vim.fs.find({ "selene.toml" }, { path = ctx.filename, upward = true })[1]
      --   end,
      -- },
    -- },
  },
  keys = {
    {
      '<leader>cL',
      function()
        require('lint').try_lint()
      end,
      desc = 'lint current buffer',
    },

  }
}
