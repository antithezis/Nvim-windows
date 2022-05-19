local mapper = function (mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

vim.g.mapleader = ' '

mapper('i', '<Leader><Leader>', '<cmd>w <CR> <Esc>')

-- Text editor
mapper('n', '<C-a>', 'gg<S-v>G')
mapper('n', '<leader>d', ':t. <CR>')

-- Telescope
mapper('n', '<Leader>ff', ':Telescope find_files <CR>')
mapper('n', '<Leader>fg', ':Telescope live_grep <CR>')
mapper('n', '<C-]>', ':Telescope buffers <CR>')
mapper('n', '<Leader>fh',':Telescope help_tags <CR>')

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
mapper('n', '<Leader>r', ':NvimTreeRefresh <CR>')
mapper('n', '<Leader>n', ':NvimTreeFindFile <CR>')
mapper('n',  '<C-b>', ':vsplit <CR>')
mapper('n', '<C-w>', ':w <CR>')
mapper('n', '<C-q>', ':q <CR>')
-- mapper('n', '<Leader>\ ', ':Commentary <CR>')
mapper('n', '<Leader>>', '12 <C-w>>')
mapper('n', '<Leader><', '12 <C-w><')

mapper('n', '<C-z>', ':TSToggle highlight <CR>')

-- Bracey config (Live server) --

mapper('n', '<Leader>bs', ': Bracey <CR>')
mapper('n', '<Leader>bp', ': BraceyStop <CR>')
mapper('n', '<Leader>br', ': BraceyReload <CR>')
