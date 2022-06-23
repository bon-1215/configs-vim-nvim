":::instalacion de plugins:::

call plug#begin('~/AppData/Local/nvim/plugged') 	"directorio donde se van a instalar los plugins

"plugins
Plug 'sonph/onehalf', {'rtp':'vim'} 	"tema
"Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'		        "diseño de la barra en la cual se muestran los modos, la linea, etc.
Plug 'vim-airline/vim-airline-themes'	    "temas para el vim-airline
Plug 'scrooloose/nerdtree'   		        "arbol de archivos y directorios  
Plug 'christoomey/vim-tmux-navigator'	    "navegar entre archivos
Plug 'mattn/emmet-vim'			            "emmet para estructuras
Plug 'Yggdroot/indentline'                  "lineas de indentacion
Plug 'alvan/vim-closetag'                   "cierre de etiquetas
Plug 'honza/vim-snippets'                   " Configuraciones para code snippets
Plug 'neoclide/coc.nvim', {'branch': 'release'}


call plug#end() 			"cerramos el llamado de los plugins
 
"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

"CONFIGURACIONES BASICAS 
set number 				"muestra los numeros de cada linea en la parte izquierda 
set relativenumber 			"la distribucion de los numeros en lineas de manera relativa
set mouse=a 				"permite la interaccion con el mouse
set noshowmode				"me deja de mostrar el modo en el que estamos 'normal, insert, visual, etc'
syntax enable 				"activa el coloreado de sintaxis en algunos tipos de archivos como html, c, c++
set encoding=utf-8 			"permite setear la codificación de archivos para aceptar caracteres especiales
set sw=4 				"la indentación genera 4 espacios
set nowrap				"el texto en una linea no baja a la siguiente, solo continua en la misma hasta el infinito.
"set noswapfile				"para evitar el mensaje que sale al abrir algunos archivos sobre swap.
set clipboard=unnamed			"para poder utilizar el portapapeles del sistema operativo 'esto permite poder copiar y pegar desde cualquier parte a nvim y viceversa.	
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

"colorscheme onehalfdark 			"Poner el tema de color 
"set termguicolors

colorscheme onehalfdark
"let g:gruvbox_contrast_dark = "hard"

"::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::


"configuracion de vim-airline
let g:airline#extensions#tabline#enabled = 1			"muestra la linea de pestaña en la que estamos buffer
let g:airline#extensions#tabline#formatter = 'unique_tail'	"muestra solo el nombre del archivo que estamos modificando
let g:airline_theme='onehalfdark'					"el tema de airline

"Borrar la busqueda de una palabra
nmap <silent> ,/ :noh<CR>

"configuracion de nerdtree
"mapeando el abrir y cerrar de nerdtree con nerdtreetoggle vemos los archivos en el arbol y podemos cerrarlo a la vez, map es la C mayuscula representa el
"control y -n la tecla n lo que indica que realizará la siguiente funcion de excribir el comando NERDTreeToggle y CR significa ENTER.
nnoremap <silent> <C-n> :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1

"Configuracion de tmux navigator 
let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <C-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <C-j> :TmuxNavigateDown<cr>
nnoremap <silent> <C-k> :TmuxNavigateUp<cr>
nnoremap <silent> <C-l> :TmuxNavigateRight<cr>

"Configuracion de emmet


"Configuracion de indentline

let g:indentLine_char= '¦'                                  "caracter de las lineas
let g:indentLine_bufTypeExclude = ["help", "terminal"]      "en donde no se mostraran las lineas
let g:indentLine_indentLevel = 10                           "cantidad de indentacion
let g:indentLine_setConceal = 1                             "en que modos se mostraran y cuando se ocultaran
let g:indentLine_concealcursor = "inc"
let g:indentLine_conceallevel=2

let g:indentLine_color_term = 239
let g:indentLine_color_gui = '#616161'
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)


"Configuracion de closetag
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
let g:closetag_filenames = '*.html,*.js,*.jsx,*.xhtml,*.phtml'
" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
let g:closetag_filetypes = 'html,xhtml,phtml'
" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
let g:closetag_emptyTags_caseSensitive = 1
" Disables auto-close if not in a "valid" region (based on filetype)
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }
" Shortcut for closing tags, default is '>'
let g:closetag_shortcut = '>'
" Add > at current position without closing the current tag, default is ''
let g:closetag_close_shortcut = '<leader>>'




