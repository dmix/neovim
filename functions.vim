function! PreciseTrimWhiteSpace()
  " We need to save the view because the substitute command might
  " or might not move the cursor, depending on whether it finds
  " any whitespace.
  let saved_view = winsaveview()

  " Remove white space. Ignore "not found" errors. Don't change jumplist.
  keepjumps '[,']s/\s\+$//e

  " Move cursor back if necessary.
  call winrestview(saved_view)
endfunction

function! g:CustomFormatting()
endfunction

