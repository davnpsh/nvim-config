-- [[ Basic Keymaps ]]

-- LEADER key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Escape to Netrw
vim.keymap.set('n', '<leader>px', vim.cmd.Ex)

-- Disable <Space> in normal and visual mode
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

