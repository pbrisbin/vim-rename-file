if exists("g:rename_file_loaded")
  finish
endif

let g:rename_file_loaded = 1

function s:RenameFile()
  let old_name = expand('%')
  let new_name = input('New file name: ', old_name, 'file')

  if new_name != '' && new_name != old_name
    exec 'saveas ' . new_name
    call delete(old_name)
  endif
endfunction

command RenameFile call s:RenameFile()
