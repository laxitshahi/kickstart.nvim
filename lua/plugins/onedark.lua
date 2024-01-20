return {
  -- Theme inspired by Atom
  'navarasu/onedark.nvim',
  priority = 1000,
  -- You need this config to "call" and setup the theme
  config = function()
    vim.cmd.colorscheme 'onedark'
  end,
}
