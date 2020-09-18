set backckground=
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "pslavkin_color"
hi Normal		ctermfg=gray	
"ctermbg=black 
hi Function		ctermfg=brown
hi CTagsFunction 	ctermfg=yellow
hi CTagsDefinedName 	ctermfg=green
hi CTagsStructure       ctermfg=white           ctermbg=darkblue
hi CTagsGlobalVariable  ctermfg=cyan
hi CTagsConstant        ctermfg=yellow 	
hi CTagsLocalVariable   ctermfg=green 	
hi NonText		ctermfg=brown
hi comment		ctermfg=darkcyan 		ctermbg=black
hi constant		ctermfg=yellow
hi identifier		ctermfg=cyan
hi statement		ctermfg=lightblue
hi preproc		ctermfg=gray
hi type			ctermfg=magenta
hi special		ctermfg=darkcyan ctermbg=red
hi ErrorMsg		ctermfg=yellow	ctermbg=red
hi WarningMsg		ctermfg=green	ctermfg=red
hi Error		ctermfg=yellow	ctermbg=red
hi Todo			ctermfg=Black	
hi Cursor		ctermfg=white
hi Search		ctermfg=yellow  ctermbg=red
hi IncSearch		ctermfg=blue
hi LineNr		ctermfg=blue
hi title		ctermfg=darkgrey
hi StatusLineNC		ctermfg=white		ctermbg=darkblue  cterm=bold
hi StatusLine		ctermfg=white		ctermbg=darkblue  cterm=bold
hi label		ctermfg=darkgreen
hi operator		ctermfg=yellow
hi clear Visual
hi Visual		cterm=reverse
hi DiffChange   	ctermfg=darkgreen
hi DiffText		ctermfg=green
hi DiffAdd		ctermfg=blue
hi DiffDelete   	ctermfg=yellow
hi Folded		ctermfg=darkcyan
hi FoldColumn		ctermfg=gray ctermbg=white
hi cIf0			ctermfg=yellow
hi Pmenu		ctermfg=white   ctermbg=darkblue 
hi PmenuSel		ctermfg=yellow 	ctermbg=darkblue 
hi SpellBad 		cterm=bold ctermbg=darkcyan 
hi WildMenu		cterm=bold ctermbg=darkcyan 

