if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
    " Use basename of *.template files as filetype
    au! BufRead,BufNewFile *.template exe 'setfiletype ' . expand('%:t:r')
augroup END
