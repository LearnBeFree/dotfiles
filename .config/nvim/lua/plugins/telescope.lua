return {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep'},
    config = function()
	local builtin = require('telescope.builtin')
	vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
	vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
	vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
	vim.keymap.set('n', '<leader>fn', builtin.help_tags, { desc = 'Telescope help tags' })
	-- I have to specify the bindings keeping in mind the langmap stuff... 
	-- TODO is there a way to avoid it? I want to specify <leader>fh and use <leader>fh
    end
}
