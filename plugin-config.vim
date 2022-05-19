let g:closetag_filenames = '*.html, *.js, *.jsx, *.ts, *.tsx'

" let g:kite_supported_languages = ['javascript', 'python']

autocmd BufNewFile *.html Or ~/AppData/Local/nvim/templates/html.skel

"Coc 
" command! -nargs = 0 Prettier: CocCommand prettier.formatFile
" nnoremap <C-D> :Prettier<CR>

autocmd FileType typescript,html call angular_cli#init()`

autocmd FileType python let b:coc_suggest_disable = 1
" autocmd FileType scss setl iskeyword+=@-@

autocmd BufWritePre *.js :CocCommand prettier.formatFile
autocmd BufWritePre *.jsx :CocCommand prettier.formatFile
autocmd BufWritePre *.ts :CocCommand prettier.formatFile
autocmd BufWritePre *.css :CocCommand prettier.formatFile
autocmd BufWritePre *.html :CocCommand prettier.formatFile

" Load the configuration for the template strings syntax support in the TS files
" autocmd FileType typescript JsPreTmpl html
" autocmd FileType typescript syn clear foldBraces

" Enable displaying TS compilation errors in the QuickFix window
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

" Disable VIM Scratch Preview Window included at the top of the editted files
" See also: https://stackoverflow.com/questions/3105307/how-do-you-automatically-remove-the-preview-window-after-autocompletion-in-vim
set completeopt-=preview

" Syntastic syntax highlighting
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:tsuquyomi_disable_quickfix = 1
let g:syntastic_typescript_checkers = ['tsuquyomi'] 

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


" markdown viwer config
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 1

" Show hiden elemets markdown
let g:indentLine_concealcursor = ""
let g:vim_json_syntax_conceal = 0
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0

