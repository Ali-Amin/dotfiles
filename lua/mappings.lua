vim.keymap.set('n', '<M-Down>', "<CMD>move +1<CR>")
vim.keymap.set('n', '<M-j>', "<CMD>move +1<CR>")
vim.keymap.set('n', '<M-Up>', "<CMD>move -2<CR>")
vim.keymap.set('n', '<M-k>', "<CMD>move -2<CR>")

-- Clipboard and replacement
vim.keymap.set('n', 'dr', 'dd"0p')
vim.keymap.set('n', '<C-c>', '"+yy')
vim.keymap.set('v', '<C-c>', '"+y')

vim.keymap.set('i', 'jk', "<Esc>")
