return {
  'akinsho/toggleterm.nvim',
  version = "*",
  opts = {
    direction = 'float',
    vim.keymap.set('n', '<C-/>', ':ToggleTerm size=40<CR>'),
  }
}
