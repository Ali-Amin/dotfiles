lspconfig = require "lspconfig"
util = require "lspconfig/util"

lspconfig.pyright.setup {
	cmd = { "pyright-langserver", "--stdio" },
	filetypes = { "python" },
	root_markers = { "pyproject.toml", "setup.py", "setup.cfg", ".git" },
	--	root_dir = util.root_pattern(".py"),
	settings = {
		python = {
			autoSearchPaths = true,
			diagnosticMode = "workspace",
			useLibraryCodeForTypes = true
		},
	},
}

vim.diagnostic.config({
	virtual_text = false
})
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

vim.keymap.set('n', 'gh', function() vim.lsp.buf.hover() end)
vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end)
