require('nvim-treesitter.configs').setup {
	ensure_installed = {'vue', 'javascript', 'typescript', 'html', 'css', 'scss', 'markdown', 'markdown_inline', 'java'},
	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false
	}
}
