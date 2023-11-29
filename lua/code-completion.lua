vim.opt.completeopt = {'menuone', 'noselect', 'noinsert', 'preview'}

vim.opt.shortmess = vim.opt.shortmess + {c = true}

local cmp = require 'cmp'
cmp.setup({
	sources = {
		{name = 'path'},
		{name = 'nvim_lsp', keywork_length = 3},
		{name = 'nvim_lsp_signature_help'},
		{name = 'nvim_lua', keywork_length = 2},
		{name = 'buffer', keywork_length = 2},
	},

	mapping = {
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.close(),
		['<C-Down>'] = cmp.mapping.select_next_item(),
		['<C-Up>'] = cmp.mapping.select_prev_item(),
		['C-f'] = cmp.mapping.scroll_docs(4),
		['<CR>'] = cmp.mapping.confirm({
			behavior = cmp.ConfirmBehavior.Insert,
			select = true,
		})
	}
})
