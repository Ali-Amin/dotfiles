vim.keymap.set('n', '<Space>f', ':lua require"telescope.builtin".find_files({no_ignore=true, hidden=true})<CR>', {})
vim.keymap.set('n', '<Space>ff', ':lua require"telescope.builtin".live_grep()<CR>', {})

