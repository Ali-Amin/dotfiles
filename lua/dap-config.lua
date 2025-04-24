local dap = require('dap')
local dapui = require('dapui')

dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function() 
	dap.repl.open()
end

dap.listeners.before.event_terminated["dapui_config"] = function ()
	dapui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end

require("dap-python").setup("python3")

vim.keymap.set('n', '<Space>d', "<Cmd>DapContinue<CR>")
vim.keymap.set('n', '<Space>b', "<Cmd>DapToggleBreakpoint<CR>")
vim.keymap.set('n', '<C-s>', "<Cmd>DapStepOver<CR>")
vim.keymap.set('n', '<Space>i', "<Cmd>DapStepInto<CR>")
vim.keymap.set('n', '<Space>o', "<Cmd>DapStepOut<CR>")
vim.keymap.set('n', '<Space>r', "<Cmd>DapToggleRepl<CR>")

vim.keymap.set('n', '<Space>u', function() dapui.toggle() end)
vim.keymap.set('n', '<C-h>', function() dapui.eval() end)
