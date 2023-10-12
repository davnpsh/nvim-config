local builtin = require('telescope.builtin')

-- Search project files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- Search git files
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- Find matches for the string in the file
-- requires 'ripgrep' package
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
