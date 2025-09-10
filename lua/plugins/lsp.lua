local function sequential_root_pattern(...)
  local patterns = { ... }

  return function(fname)
    local current_dir = vim.fn.fnamemodify(fname, ':h')

    for _, pattern in ipairs(patterns) do
      local search_dir = current_dir

      while search_dir ~= '/' do
        -- glob 패턴 지원
        if pattern:match('%*') then
          local matches = vim.fn.glob(search_dir .. '/' .. pattern, false, true)
          if #matches > 0 then
            return search_dir
          end
        else
          -- 일반 파일/디렉토리
          local target = search_dir .. '/' .. pattern
          if vim.fn.filereadable(target) == 1 or vim.fn.isdirectory(target) == 1 then
            return search_dir
          end
        end

        search_dir = vim.fn.fnamemodify(search_dir, ':h')
      end
    end

    return nil
  end
end

return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
       'b0o/schemastore.nvim',
       { 'j-hui/fidget.nvim', opts = {} },


    },
    opts = {
      diagnostics = {
        virtual_text = false,
      },
      servers = {
        -- pyright = {}
        basedpyright = {
          mason = true,
          settings = {
            python = {
              analysis = {
                autoSearchPaths = true,
                typeCheckingMode = "standard",
                diagnosticMode = 'workspace',
                diagnosticSeverityOverrides = {
                  -- reportUnknownVariableType = "none",
                  reportUnknownVariableType = "false",
                  reportUnknownMemberType = false,
                  reportUnknownParameterType = false,
                  reportMissingParameterType = false,
                  reportDeprecated = "false",
                  reportMissingTypeArgument = false,
                  reportAny = "false",
                },
              },
            },
          },
        },

        vtsls = {
          root_dir = require('lspconfig.util').root_pattern(
            "pnpm-workspace.yaml",
            "turbo.json",
            "tsconfig.base.json",
            "package.json",
            ".git"
          ),
          -- root_dir = sequential_root_pattern(
          --   "pnpm-workspace.yaml",
          --   "turbo.json",
          --   "tsconfig.base.json",
          --   "package.json"
          -- ),
          single_file_support = false,
          settings = {
            vtsls = {
              autoUseWorkspaceTsdk = true,
              experimental = {
                completion = {
                  enableServerSideFuzzyMatch = true,
                },
              },
            },
            typescript = {
              preferences = {
                includePackageJsonAutoImports = "auto",
                scope = 'allOpenProjects'
              },
              updateImportsOnFileMove = { enabled = 'always' },
              suggest = {
                completeFunctionCalls = true,
              },
              inlayHints = {
                parameterNames = { enabled = 'literals' },
                parameterTypes = { enabled = true },
                variableTypes = { enabled = false },
                propertyDeclarationTypes = { enabled = true },
                functionLikeReturnTypes = { enabled = true },
                enumMemberValues = { enabled = true },
              },
            },
            javascript = {
              preferences = {
                includePackageJsonAutoImports = "auto",
                scope = 'allOpenProjects'
              },
            }
          },
        },
      },
    },
  },
}


-- return {
--   {
--     "neovim/nvim-lspconfig",
--     opts = {
--       diagnostics = {
--         virtual_text = false,
--       },
--       servers = {
--         -- pyright = {}
--         basedpyright = {
--           mason = true,
--           settings = {
--             python = {
--               analysis = {
--                 typeCheckingMode = "standard",
--                 diagnosticSeverityOverrides = {
--                   -- reportUnknownVariableType = "none",
--                   reportUnknownVariableType = "false",
--                   reportUnknownMemberType = false,
--                   reportUnknownParameterType = false,
--                   reportMissingParameterType = false,
--                   reportDeprecated = "false",
--                   reportMissingTypeArgument = false,
--                   reportAny = "false",
--                 },
--               },
--             },
--           },
--         },
--       },
--     },
--   },
-- }
