":::instalacion de plugins:::

call plug#begin('~/AppData/Local/nvim/plugged') 	"directorio donde se van a instalar los plugins

Plug 'Yggdroot/indentLine' 		"indentacion
Plug 'mattn/emmet-vim' 			"emmet para diseño web
Plug 'christoomey/vim-tmux-navigator'	"poder navegar entre archivos abiertos
Plug 'neoclide/coc.nvim', {'branch': 'release'}	"autocompletado inteligente; Puede requerir 'npm install' en la carpeta  coc de plugged
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}  " To visualize markdown on navigator

" Angular

Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'https://github.com/bdauria/angular-cli.vim'
" Async execution library for Vim
Plug 'https://github.com/Shougo/vimproc.vim', {'do' : 'make'}

" .editorconfig support
Plug 'https://github.com/editorconfig/editorconfig-vim'
" Angular CLI plugin
" Use :Ng command in Vim
"IDE 
Plug 'mhinz/vim-signify'

call plug#end() 			"cerramos el llamado de los plugins
