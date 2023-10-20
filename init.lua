vim.opt.termguicolors = true
vim.wo.relativenumber = true

require('plugins')
require('mason-config')
require('gopls')
require('code-completion')
require('dap-config')
require('styling')
require('code-highlight')
require('telescope-config')
require('statusline')
require('mappings')
require('formatting')
