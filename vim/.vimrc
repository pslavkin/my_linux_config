set nowrap
set formatoptions-=t "esto es para que no wrapee mientras escribis
syntax enable
autocmd BufRead,BufNewFile *.vhdl set cms=\ --%s   "seteo el comentario cuando el archivo es unvhdl sino me toma como C++
"colorscheme darkruby
"colorscheme mustang
"colorscheme default
"colorscheme darkburn
"colorscheme made_of_code


"pslavkin_vim_color
"hi Normal guibg=NONE ctermbg=NONE

"If you prefer the Omni-Completion tip window to close when a selection is
 " made, these lines close it on movement in insert mode or when leaving
 " insert mode
autocmd CursorMovedI * if pumvisible() == 0 | pclose|endif
autocmd InsertLeave * if pumvisible()  == 0 | pclose|endif
set hlsearch
set incsearch
set ignorecase
set number
let g:netrw_liststyle    =  3
let g:netrw_browse_split =  3
"suprime el banner del netrw
let g:netrw_banner       = 0
"para levantar las pics de noto y demas como c
au BufRead,BufNewFile *.pic set filetype=c
au BufRead,BufNewFile *.mdy set filetype=c
au BufRead,BufNewFile *.lkf set filetype=c
au BufRead,BufNewFile *.map set filetype=c

"vim-fugitive path
set runtimepath^=~/.vim/plugin/vim-fugitive

set runtimepath^=~/.vim/plugin/ctrlp.vim
let g:ctrlp_working_path_mode   = 'ra'
let g:ctrlp_match_window_bottom = 1
let g:ctrlp_max_depth           = 20
let g:ctrlp_max_files           = 50000
let g:ctrlp_mruf_relative       = 1
let g:TypesFileIncludeLocals    = 1
let g:ctrlp_follow_symlinks     = 1
let g:ctrlp_buffer_func         = { 'enter': 'BrightHighlightOn', 'exit':  'BrightHighlightOff', }

"set runtimepath^=~/.vim/plugged/
""mapeo para csove ayudante de cscope
nnoremap <leader>fa :call CscopeFindInteractive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>
let g:cscope_silent=1


function BrightHighlightOn()
  hi CursorLine cterm = reverse
endfunction

function BrightHighlightOff()
  hi CursorLine cterm = none
endfunction


filetype plugin on
set grepprg=grep\ -nH\ $*
filetype indent on

let g:tex_flavor='latex'

"mapeos de teclas
map <F1> <Esc>
imap <F1> <Esc>

set spelllang=es,en_us
map BB 1z=
map BN ]s

"busca en el contexto actual
imap <F3>  <esc>a<C-P>
map  <F3>  a<C-P>

" para eliminar comentarios en C/C++ usando el preprocesador de gcc
map <F5> <esc>:% !gcc -fpreprocessed -dD -E "%" 2>/dev/null<CR>:set nomodifiable<CR>
map <F6> <esc>:set modifiable<CR>:undo<CR>
map <F7> <esc>:exec "% !sunifdef -f"def" %"<CR>:set nomodifiable<CR>

"nerdtree a la izquierda
map <c-e>  :NERDTreeToggle<CR>
let NERDTreeQuitOnOpen = 1

autocmd FileType python map <buffer> \\ :w<CR>:exec '!clear'<CR>:exec '!python3.7' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> \\ <esc>:w<CR>:exec '!clear'<CR>:exec '!python3.7' shellescape(@%, 1)<CR>

""para editar en hexa"i
noremap <F9> :call HexMe()<CR>
let $in_hex=0
function HexMe()
set binary
set noeol
  if $in_hex>0
    :%!xxd -r
    let $in_hex=0
  else
    :%!xxd 
    let $in_hex=1
 endif
endfunction

 let g:TypesFileIncludeLocals = 1
"
"seteo el metodo de folder con marcadores para que quede en el archivo el
"indicador de folder y NO en el sistema de vi...molesta pero es independiente
"de donde se edite
set foldmethod=marker

nnoremap <silent> <F8> :TagbarToggle<CR>
imap   <silent> <F8> :TagbarToggle<CR>


" c-support
" para switchear entre source y header
let g:alternateNoDefaultAlternate = 1
 noremap   \a        :A<CR> 
inoremap   \a   <C-C>:A<CR> 
let g:alternateSearchPath = 'sfr:../punto_h,sfr:../punto_c,sfr:../h,sfr:../c,sfr:../inc,sfr:../drv,sfr:./h'


"nuermo de filas antes de que empuece a screollear
set scrolloff=5
"define el numero de columnas antes de empezar a scrollear.
set sidescrolloff=10
"este defvine el numero de columnas que se mueve
set sidescroll=1
" muestra el prototiopo de la funcion cuando se hace un autocompletion a veces
" sirce
set showfulltag

set clipboard=unnamed

set  nrformats=alpha,octal,hex

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`]

let g:ackprg = 'ag --column --nocolor --nogroup'


set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" para abrir pdf en formato texto, el comando es Rpdf
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> - |fmt -csw78


"para borrar un buffer
nmap <del> :bdelete<CR>

"vim-airline
let g:airline#extensions#tabline#enabled = 1 "para mostrar los buffers activos arriba de todo
let g:airline_theme='atomic'
let g:airline_skip_empty_sections = 1
let g:airline_powerline_fonts = 0

let g:LanguageDetectionMethods="FileType"


"switch entre buffers con las flexhas
map  <silent> <C-l> :bnext<CR>
map  <silent> <C-h> :bprev<CR>
imap  <silent> <C-l> <ESC>:bnext<CR>
imap  <silent> <C-h> <ESC>:bprev<CR>

"noremap <silent> <right> <ESC>:bnext<CR>
"noremap <silent> <left> <ESC>:bprev<CR>
"inoremap <silent> <right> <ESC>:bnext<CR>
"inoremap <silent> <left> <ESC>:bprev<CR>

"numeros relativos
set relativenumber

" te muestra el espacio y los tabs para poder detectarlos
set list                                           " Display unprintable characters f12 - switches
set listchars=tab:\,trail:,extends:»,precedes:« " Unprintable chars mapping
"set listchars=tab:>,trail:-,extends:»,precedes:« " Unprintable chars mapping
set undofile                                       " Save undo's after file closes
set undodir=$HOME/.vim/undo                        " where to save undo histories
set undolevels=1000                                " How many undos
set undoreload=10000                               " number of lines to save for undo
set hidden                                         " permite esconder un bufffer que tiene modificaciones
set tabstop    =3                                  " con 3 queda mejor el tab
set shiftwidth =3                                  " si esto vale cero, cuando hago >> toma el tabstop
set expandtab                                      " me decido por tirar a la basura los tabs porque complican un poco y meter todo espacios
set encoding   =utf-8                              " codifico el archivo en utf-8
"abreeviaturas para C
:abbrev forr for( i = 0; i <; i ++ ) {<esc>9hi

"Start interactive EasyAlign for a motion/text object (e.g. gaip)
map re( :EasyAlign1(gv:%retab!
map re) :EasyAlign1)gv:%retab!
map ref :EasyAlign1(gv:EasyAlign1)gv:EasyAlign1{gv:EasyAlign*;gv:EasyAlign1/:%retab!
map red :EasyAlign1[gv:EasyAlign1]gv:EasyAlign*;:%retab!
map re[ :EasyAlign1[:EasyAlign*;:%retab!
map re] :EasyAlign-1]:EasyAlign*;:%retab!
map re{ :EasyAlign*{:EasyAlign*;:%retab!
map re} :EasyAlign*}:EasyAlign*;:%retab!
map re# :EasyAlign*#:EasyAlign*;:%retab!
map re/ :EasyAlign1/:%retab!
map re= :EasyAlign*=:EasyAlign*;:%retab!
map reh :EasyAlign*\ :%retab!
map re0 :EasyAlign1z:EasyAlign*;:%retab!
map rec :EasyAlign*c:EasyAlign*;:%retab!
map rem :EasyAlign*m:EasyAlign*;:%retab!
map res :EasyAlign-1s:EasyAlign*;:%retab!
map rms :s/[ \t]//g:noh


call plug#begin('~/.vim/plugged')
Plug 'chrisbra/NrrwRgn'                            "extrae en un archivo apart lo seleccionado, esta bueno
Plug 'https://github.com/junegunn/vim-easy-align' "espectacular para alinear.. lo uso a diario
Plug 'https://github.com/vim-syntastic/syntastic'  "compila todo y te muestra los errores directo en el vim.. is a must aunque aun no lei bien como configurarlo
Plug 'flazz/vim-colorschemes'                      "colores para vim
Plug 'flazz/vim-colorschemes'                      "colores para vim
Plug 'dyng/ctrlsf.vim'
Plug 'https://github.com/brookhong/cscope.vim'
Plug 'terryma/vim-multiple-cursors'               "is a must ! el nombre lo indica, no lo estoy usando... 
Plug 'davidhalter/jedi-vim'                        "para automcomplet de python va de lujo. sino usar ycm que tambien va, pero para python este esta mejor

"Plug 'ronakg/quickr-cscope.vim'
"Plug 'inkarkat/vim-SpellCheck'                     "diccionario en/es safa bastante
"Plug 'inkarkat/vim-ingo-library'                  "??
"Plug 'https://github.com/dkprice/vim-easygrep.git'
"Plug 'https://github.com/abudden/EasyColour'
"Plug 'vim-scripts/indentpython.vim'                "ayuda a indentar en python

"Plug 'christoomey/vim-tmux-navigator'            "permite cambiar entre splits con C-hjkl y tambien en tmux
"Plug 'vim-vdebug/vdebug'                           "para hacer debug de python
"Plug 'Valloric/YouCompleteMe'                     "completa cualquier cosa y te compila el programa tambien. analiza semantica aunque deja todo relento..
"Plug 'lfv89/vim-foldfocus'                         "extrae una funcion en otro buffer temporal
"Plug 'https://github.com/apalmer1377/factorus'

call plug#end() "termina la seccion de plugged



"algunos detalles de nrrwRgn
xmap oo :NR!<CR> "seleciono visualmente y le doy a hh y me lo abre en un nuevo windows para que lo edite..

 
"defino algunos delimitadores rapidos para C y genericos
let g:easy_align_delimiters = {
\ 's': {
\     'pattern': '\s',
\     'left_margin':   1,
\     'right_margin':  0,
\     'stick_to_left': 0,
\     },
\ 'm': {
\     'pattern': '>>\|=>\|>\|<',
\     'left_margin':   1,
\     'right_margin':  1,
\     'stick_to_left': 0
\     },
\ '/': {
\     'pattern':         '//\+\|/\*\|\*/',
\     'delimiter_align': 'l',
\     'ignore_groups':   ['!Comment'] },
\ '[': {
\     'pattern':       '[[]',
\     'left_margin':   0,
\     'right_margin':  1,
\     'stick_to_left': 0
\   },
\ ']': {
\     'pattern':       '[\]]',
\     'left_margin':   1,
\     'right_margin':  0,
\     'stick_to_left': 0
\   },
\ '(': {
\     'pattern':       '[(]',
\     'left_margin':   1,
\     'right_margin':  1,
\     'stick_to_left': 0,
\   },
\ ')': {
\     'pattern':       '[)]',
\     'left_margin':   1,
\     'right_margin':  0,
\     'stick_to_left': 0
\   },
\ ';': {
\     'pattern':       '[;]',
\     'left_margin':   0,
\     'right_margin':  0,
\     'stick_to_left': 0
\   },
\ 'z': {
\     'pattern':       '[0-9]',
\     'left_margin':   1,
\     'right_margin':  0,
\     'stick_to_left': 0,
\     'ignore_groups': []
\   },
\ 'c': {
\     'pattern':       '[\,]',
\     'left_margin':   1,
\     'right_margin':  0,
\     'stick_to_left': 0,
\     'ignore_groups': [],
\   },
\ 'd': {
\     'pattern':      ' \(\S\+\s*[;=]\)\@=',
\     'left_margin':  0,
\     'right_margin': 0
\   }
\ }

"====[ Make the 81st column stand out ]====================
set textwidth=95     "coincidente con la linea que dibujo..

    " EITHER the entire 81st column, full-screen...
highlight ColorColumn ctermfg=green
highlight ColorColumn ctermbg=black
set colorcolumn=95

"=====[ Highlight matches when jumping to next ]=============

    " This rewires n and N to do the highlighing...
nnoremap <silent> n   n:call HLNext(0.2)<cr>
nnoremap <silent> N   N:call HLNext(0.2)<cr>



" OR ELSE ring the match in red...
function! HLNext (blinktime)
    highlight RedOnRed ctermfg=green ctermbg=green
    let [bufnum, lnum, col, off] = getpos('.')
    let matchlen = strlen(matchstr(strpart(getline('.'),col-1),@/))
    echo matchlen
    let ring_pat = (lnum > 1 ? '\%'.(lnum-1).'l\%>'.max([col-4,1]) .'v\%<'.(col+matchlen+3).'v.\|' : '')
            \ . '\%'.lnum.'l\%>'.max([col-4,1]) .'v\%<'.col.'v.'
            \ . '\|'
            \ . '\%'.lnum.'l\%>'.max([col+matchlen-1,1]) .'v\%<'.(col+matchlen+3).'v.'
            \ . '\|'
            \ . '\%'.(lnum+1).'l\%>'.max([col-4,1]) .'v\%<'.(col+matchlen+3).'v.'
    let ring = matchadd('RedOnRed', ring_pat, 101)
    redraw
    exec 'sleep ' . float2nr(a:blinktime * 100) . 'm'
    call matchdelete(ring)
    redraw
endfunction



"para que entre a Releseas y ahi haga el make

:command! -nargs=* Makr :mak -C ./Debug <args>
:command! -nargs=* Makf :mak -C ./Release <args>

"para compiular para arm
set makeprg=armmake.sh


"lo comento porque no lo estoy usando... 
nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>

"nmap     doc :YcmCompleter GetDoc<CR>

colorscheme distinguished


"esto es para cambiar entre splits de vim usando C-hjkl dentro de tmux
"let g:tmux_navigator_no_mappings = 1
" Disable tmux navigator when zooming the Vim pane
"let g:tmux_navigator_disable_when_zoomed = 1
"nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
"nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
"nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
"nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
"nnoremap <silent> <c-\> :TmuxNavigatePrevious<cr>

autocmd BufRead,BufNewFile *.vhdl set cms=\ --%s   "seteo el comentario cuando el archivo es unvhdl sino me toma como C++
