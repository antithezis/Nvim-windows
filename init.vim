so ~/AppData/Local/nvim/lua/init.lua

so ~/AppData/Local/nvim/plugins.vim
so ~/AppData/Local/nvim/plugin-config.vim
so ~/AppData/Local/nvim/maps.vim

" colorscheme onedark 			"activar el tema onedark

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
