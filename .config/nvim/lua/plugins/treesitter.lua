-- TODO I don't fully understand why it is needed and whether my setup is correct (the import lines in python look strange)
return {
    'nvim-treesitter/nvim-treesitter', 
    build = ':TSUpdate',
    config = function()
	local configs = require('nvim-treesitter.configs')
	configs.setup({
	    highlight = { enable = true, },
	    indent = { enable = true, },
	    autotage = { enable = true, },
	    ensure_installed = { 'bash', 'c', 'diff', 'html', 'lua', 'luadoc', 'markdown', 'markdown_inline', 'query', 'vim', 'vimdoc', 'python', 'javascript' },
	})
    end
}
