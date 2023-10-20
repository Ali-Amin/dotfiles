lspconfig = require "lspconfig"
util = require "lspconfig/util"

lspconfig.gopls.setup {
	cmd = {"gopls", "serve"},
	filetypes = {"go", "gomod"},
	root_dir = util.root_pattern("go.work", "go.mod", ".git"),
	settings = {
		gopls = {
			analyses = {
				unusedparams = true,
				bools = true,
				composites = true,
				httpresponse = true,
				loopclosure = true,
				printf = true,
				stringintconv = true,
				structtag = true,
				tests = true,
				unreachable = true,
				unusedvariable = true,
			},
			staticcheck = true,
		},
	},
}

vim.keymap.set('n', 'gh', function() vim.lsp.buf.hover() end)
vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end)
