local dap = require('dap')
local dapui = require('dapui')

dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function() 
	dapui.open()
end

dap.listeners.before.event_terminated["dapui_config"] = function ()
	dapui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end

vim.keymap.set('n', '<Space>db', "<Cmd>DapToggleBreakpoint<CR>")
vim.keymap.set('n', '<Space>d', "<Cmd>DapContinue<CR>")
vim.keymap.set('n', '<Space>dd', "<Cmd>DapStepOver<CR>")
vim.keymap.set('n', '<Space>di', "<Cmd>DapStepInto<CR>")
vim.keymap.set('n', '<Space>do', "<Cmd>DapStepOut<CR>")
vim.keymap.set('n', '<Space>dr', "<Cmd>DapToggleRepl<CR>")

vim.keymap.set('n', '<Space>du', function() dapui.toggle() end)
vim.keymap.set('n', '<Space>dh', function() dapui.eval() end)
