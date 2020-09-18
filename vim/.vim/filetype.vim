" my filetype file
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
  au! BufRead,BufNewFile *.ngc		setfiletype ngc
  au! BufRead,BufNewFile *.nc	   	setfiletype ngc
  au! BufRead,BufNewFile *.cnc		setfiletype ngc
augroup END

