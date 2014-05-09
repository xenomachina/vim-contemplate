" contemplate.vim - A super-simple templating system
" Maintainer:   Laurence Gonsalves <laurence@xenomachina.com>
" Last Change:  2014 May 9
" URL:          https://github.com/xenomachina/vim-contemplate

if exists('g:loaded_contemplate')
  finish
endif
let g:loaded_contemplate = 1

let s:TEMPLATE_DIR = 'templates/'

function! s:template_name(filetype)
    return s:TEMPLATE_DIR . a:filetype . '.template'
endfunction

function s:find_templates(filetype)
  return split(globpath(&runtimepath, s:template_name(a:filetype)), "\n")
endfunction

function! s:load_template(filetype)
    let templates = s:find_templates(a:filetype)
    if len(templates) >= 1
        " Last one takes precedence
        let template = templates[len(templates) - 1]
        % delete _
        silent keepalt read `=template`
        0 delete _
        " TODO: source matching .vim file if one exists
    endif
endfunction

function! s:on_buf_new_file()
  if &l:buftype == ''
    call s:load_template(&l:filetype)
  return
endfunction

command! -nargs=? Template call s:load_template(<f-args>)

augroup contemplate
  autocmd!
  autocmd BufNewFile * call s:on_buf_new_file()
augroup END
