so ~/AppData/Local/nvim/lua/init.lua

"CONFIGURACIONES BASICAS 
set number 				      " muestra los numeros de cada linea en la parte izquierda 
set relativenumber 			" la distribucion de los numeros en lineas de manera relativa
set mouse=a 				    " permite la interaccion con el mouse
set noshowmode				  " me deja de mostrar el modo en el que estamos 'normal, insert, visual, etc'
syntax enable 				  " activa el coloreado de sintaxis en algunos tipos de archivos como html, c, c++
set encoding=utf-8 			" permite setear la codificación de archivos para aceptar caracteres especiales
set sw=2 				        " la indentación genera 2 espacios
set nowrap				      " el texto en una linea no baja a la siguiente, solo continua en la misma hasta el infinito.
"set noswapfile				  " para evitar el mensaje que sale al abrir algunos archivos sobre swap.
set clipboard=unnamed		" para poder utilizar el portapapeles del sistema operativo 'esto permite poder copiar y pegar desde cualquier parte a nvim y viceversa.	
set showcmd
set showmatch
set modifiable

so ~/AppData/Local/nvim/plugins.vim
so ~/AppData/Local/nvim/plugin-config.vim
so ~/AppData/Local/nvim/maps.vim

"configuracion del tema
set termguicolors 			"activa el true color en la terminal
colorscheme onedark 			"activar el tema onedark

"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
"configuracion por defecto de coc
" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim 7401an merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif


" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
