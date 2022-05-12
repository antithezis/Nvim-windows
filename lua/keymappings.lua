local mapper = function (mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

vim.g.mapleader = ' '

-- Text editor
mapper('n', '<C-a>', 'gg<S-v>G')
mapper('n', '<C-d>', ':t. <CR>')

-- Telescope
mapper('n', '<leader>ff', ':Telescope find_files <CR>')
mapper('n', '<leader>fg', ':Telescope live_grep <CR>')
mapper('n', '<C-]>', ':Telescope buffers <CR>')
mapper('n', '<leader>fh',':Telescope help_tags <CR>')

mapper('n','<Leader>fd', ':Telescope file_browser <CR>')
mapper("n", "<C-f>", "<cmd>lua require('telescope.builtin').current_buffer_fuzzy_find()<CR>") -- search lines in current buffer
mapper("n", "<Leader>fr", "<cmd>lua require('telescope.builtin').lsp_references()<CR>") -- search references to symbol under cursor
mapper("n", "<Leader>co", "<cmd>lua require('telescope.builtin').colorscheme()<CR>") -- colorschemes
mapper("n", "<Leader>gc", "<cmd>lua require('telescope.builtin').git_branches()<CR>") -- checkout different branches
mapper("n", "<Leader>re", "<cmd>lua require('telescope.builtin').git_commits()<CR>") -- checkout commits; <CR> to checkout, <C-r>[m, s, h] to reset [mixed, soft, hard]
mapper("n", "<Leader>qf", "<cmd>lua require('telescope.builtin').quickfix()<CR>") -- jump to items in quickfix list
mapper("n", "H", "<cmd>lua require('telescope.builtin').lsp_code_actions(require('telescope.themes').get_cursor())<CR>") -- code actions


-- nvim-tree

mapper('n', '<C-n>', ':NvimTreeToggle <CR>')
mapper('n', '<leader>r', ':NvimTreeRefresh <CR>')
mapper('n', '<leader>n', ':NvimTreeFindFile <CR>')
