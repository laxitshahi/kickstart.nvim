return {
  'akinsho/toggleterm.nvim',
  version = "*",
  opts = {
    vim.keymap.set('n', '<C-/>', ':ToggleTerm size=40 direction=float<CR>'),
  }
}
