set nowrap
syntax enable
colorscheme Mustang_Vim_Colorscheme_by_hcalves
"pslavkin_vim_color
hi Normal guibg=NONE ctermbg=NONE


"If you prefer the Omni-Completion tip window to close when a selection is
 " made, these lines close it on movement in insert mode or when leaving
 " insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
set hlsearch
set incsearch
set ignorecase
set number
let g:netrw_liststyle= 3
let g:netrw_browse_split = 3
"suprime el banner del netrw
let g:netrw_banner=0 


"para levantar las pics de noto y demas como c
au BufRead,BufNewFile *.pic set filetype=c

"vim-fugitive path
set runtimepath^=~/.vim/plugin/vim-fugitive

set runtimepath^=~/.vim/plugin/ctrlp.vim
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window_bottom=1
let g:ctrlp_max_depth=20
let g:ctrlp_max_files=500
let g:ctrlp_mruf_relative=1
let g:TypesFileIncludeLocals = 1
let g:ctrlp_follow_symlinks=1
let g:ctrlp_buffer_func = { 'enter': 'BrightHighlightOn', 'exit':  'BrightHighlightOff', }

function BrightHighlightOn()
  hi CursorLine cterm=reverse
endfunction

function BrightHighlightOff()
  hi CursorLine cterm=none
endfunction


filetype plugin on
set grepprg=grep\ -nH\ $*
filetype indent off

let g:tex_flavor='latex'
set encoding=utf-8

"mapeos de teclas
map <F1> <Esc>
imap <F1> <Esc>

map <C-g> <Esc>:set spell spelllang=es<CR>
map <C-h>  <Esc>:set nospell<CR>

"omnifunction, busca en el archivo de tags.
imap <F2>  <C-X><C-O>
map <F2>  i<C-X><C-O>

"busca en el contexto actual
imap <F3>  <esc>a<C-P>
map  <F3>  a<C-P>

" para eliminar comentarios en C/C++ usando el preprocesador de gcc
map <F5> <esc>:% !gcc -fpreprocessed -dD -E "%" 2>/dev/null<CR>:set nomodifiable<CR>
map <F6> <esc>:set modifiable<CR>:undo<CR>
map <F7> <esc>:exec "% !sunifdef -f"def" %"<CR>:set nomodifiable<CR>

"nerdtree a la izquierda
map <c-e>  :NERDTreeToggle<CR>

"--------------------
"" Function: Open tag under cursor in new tab
" Source:   http://stackoverflow.com/questions/563616/vimctags-tips-and-tricks
" "--------------------
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>

"menues
:source $VIMRUNTIME/menu.vim
:set wildmenu
:set cpo-=<
:set wcm=<C-Z>
:map <F4> :emenu <C-Z>

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
    :%!xxd -c 28
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
imap 	 <silent> <F8> :TagbarToggle<CR>


" c-support
" para switchear entre source y header
let g:alternateNoDefaultAlternate = 1
 noremap   \a        :A<CR> 
inoremap   \a   <C-C>:A<CR> 
let g:alternateSearchPath = 'sfr:../punto_h,sfr:../punto_c,sfr:../h,sfr:../c,sfr:../inc,sfr:../drv,sfr:./h'


"deselecciona los elementos encontrados
map  \n :noh<CR>



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

" para abrir pdf en formato tecto, el comando es Rpdf
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> - |fmt -csw78

"mapeo para csove ayudante de cscope
"set runtimepath^=~/.vim/plugin/cscope.vim
nnoremap <leader>fa :call cscope#findInteractive(expand('<cword>'))<CR>
nnoremap <leader>l :call ToggleLocationList()<CR>
let g:cscope_silent=1


"para borrar un buffer
nmap <del> :bdelete<CR>

"vim-airline
let g:airline#extensions#tabline#enabled = 1	"para mostrar los buffers activos arriba de todo
let g:airline_theme='atomic'
let g:airline#extensions#tabline#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline_powerline_fonts = 1

"switch entre buffers con las flexhas
noremap <silent> <right> <ESC>:bnext<CR>
noremap <silent> <left> <ESC>:bprev<CR>
inoremap <silent> <right> <ESC>:bnext<CR>
inoremap <silent> <left> <ESC>:bprev<CR>

"numeros relativos
set relativenumber

" te muestra el espacio y los tabs para poder detectarlos
set list          " Display unprintable characters f12 - switches
set listchars=tab:\,trail:,extends:»,precedes:« " Unprintable chars mapping

set undofile                " Save undo's after file closes
set undodir=$HOME/.vim/undo " where to save undo histories
set undolevels=1000         " How many undos
set undoreload=10000        " number of lines to save for undo

set hidden	"permite esconder un bufffer que tiene modificaciones
set tabstop=3		" con 3 queda mejor el tab
set shiftwidth=0	" si esto vale cero, cuando hago >> toma el tabstop


