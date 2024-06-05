require('ibl').setup {
	whitespace = { highlight = { "Whitespace", "NonText" } },
	indent = { highlight = highlight },
	exclude = {
		filetypes = {
			'help',
			'git',
			'markdown',
			'text',
			'terminal',
			'lspinfo',
			'packer'
		},
		buftypes = {
			'terminal',
			'nofile'
		},
	}
}
