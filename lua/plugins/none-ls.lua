return {
  'nvimtools/none-ls.nvim',
  dependencies = {
    'nvimtools/none-ls-extras.nvim',
  },
  config = function()
    local null_ls = require 'null-ls'

    -- Null/None-ls wraps foramatters with a generalized LSP
    -- This allows these formatters to be called like LSPs
    null_ls.setup {
      sources = {
        -- Lua
        null_ls.builtins.formatting.stylua,
        -- Python
        null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.black,
        null_ls.builtins.diagnostics.pylint,
        -- JavaScript
        null_ls.builtins.formatting.prettierd,
        require('none-ls.diagnostics.eslint_d'),
        --go
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.formatting.golines,
      },
    }

    -- Setup format on save
    vim.api.nvim_create_autocmd('BufWritePre', {
      buffer = buffer,

      callback = function()
        vim.lsp.buf.format { async = false }
      end,
    })

    -- Format manually
    vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = 'Format file' })
  end,
}
