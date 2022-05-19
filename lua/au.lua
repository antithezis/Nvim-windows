vim.api.nvim_command([[
  augroup AutoCompileLatex
  autocmd BufWritePre *.js :CocCommand prettier.formatFile
  augroup END
  ]])

 -- vim.api.nvim_create_autocmd({'BufWritePre'}, {
    -- pattern = {'*.ts, *.js, *.jsx'},
    -- callback = '<cmd> Format <CR>'
  -- })
