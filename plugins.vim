":::instalacion de plugins:::

call plug#begin('~/AppData/Local/nvim/plugged') 	"directorio donde se van a instalar los plugins

" Plug 'joshdick/onedark.vim' 		"tema
Plug 'Yggdroot/indentLine' 		"indentacion
Plug 'mattn/emmet-vim' 			"emmet para diseño web
Plug 'vim-airline/vim-airline'		"diseño de la barra en la cual se muestran los modos, la linea, etc.
Plug 'vim-airline/vim-airline-themes'	"temas para el vim-airline
Plug 'preservim/nerdtree'		"gestor de archivos en forma de arbol.
Plug 'christoomey/vim-tmux-navigator'	"poder navegar entre archivos abiertos
Plug 'jiangmiao/auto-pairs'		"autocompletado de llaves, corchetes, etc.
Plug 'neoclide/coc.nvim', {'branch': 'release'}	"autocompletado inteligente; Puede requerir 'npm install' en la carpeta  coc de plugged
Plug 'easymotion/vim-easymotion'
Plug 'alvan/vim-closetag'
Plug 'sheerun/vim-polyglot'
Plug 'ryanoasis/vim-devicons' " Adds filetype-specific icons to NERDTree files and folders
Plug 'nvim-lua/completion-nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'https://github.com/leafgarland/typescript-vim'
" Plug 'https://github.com/scrooloose/nerdtree-project-plugin'
" Plug 'tribela/vim-transparent'
" Plug 'SirVer/ultisnips'


Plug 'tpope/vim-commentary'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}  " To visualize markdown on navigator

"Angular

" Typescrript syntax support
Plug 'https://github.com/leafgarland/typescript-vim'

" Javascript syntax highlighting
Plug 'https://github.com/pangloss/vim-javascript'

" Async execution library for Vim
Plug 'https://github.com/Shougo/vimproc.vim', {'do' : 'make'}

" Automatic completion suggestions
Plug 'https://github.com/Valloric/YouCompleteMe'

" .editorconfig support
Plug 'https://github.com/editorconfig/editorconfig-vim'

" Syntastic plugin
Plug 'https://github.com/vim-syntastic/syntastic'

" Angular CLI plugin
" Use :Ng command in Vim
Plug 'https://github.com/bdauria/angular-cli.vim'


"IDE 
"Plug 'junegunn/fzf'
"Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify'
Plug 'scrooloose/nerdcommenter'

call plug#end() 			"cerramos el llamado de los plugins
