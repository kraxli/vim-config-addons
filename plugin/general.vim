
function! OpenBrowser()
  let s:url = matchstr(getline("."), '[a-z]*:\/\/[^ >,;]*')

  if s:url != ""
    if has('unix')
      execute "!firefox ".s:url
    else
      " ???
      execute "!google-chrome ".s:url
    endif

  else
    echo "No URI found in line."
  endif

endfunction

unmap gx
" silent! nunmap <buffer> gc

nmap gx :call OpenBroswer()<cr>

