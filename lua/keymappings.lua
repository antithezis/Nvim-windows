local mapper = function (mode, key, result)
	vim.api.nvim_set_keymap(mode, key, result, {noremap = true, silent = true})
end

vim.g.mapleader = ' '


mapper('n', '<C-d>', ':t. <CR>')
vim.api.nvim_set_keymap(
  "n",
  "<space>ft",
  ":Telescope file_browser",
  { noremap = true }
)

mapper('n','<Leader>fd', ':Telescope file_browser <CR>')
mapper('n', '<C-n>', ': NvimTreeToggle <CR>')
