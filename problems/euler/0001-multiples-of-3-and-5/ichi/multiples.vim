" this can be loaded into vim with the ':source' command
" rather than type the file name if you are in the file buffer
" of the source code you can use % to refer to the current buffer
" :source %

" functions are delimited between a function! and endfunction statement
" functions that are not built in must start with an upper case letter
function! Multiples_to(limit)
  " a function paramater must be preceeded with 'a:' to reference it
  " variables are assigned using let
  let numbers = range(1, a:limit - 1)
  let total = 0
  " you can use for with a temporary variable to iterate over a list
  for number in numbers
    if number % 3 == 0 || number % 5 == 0
      "let is still needed after the variable is already created
      let total = number + total
    endif
  endfor
  " use both echom and return.
  " echom gives feedback for people calling the function within vim
  " while return gives back a value to a calling function useful for
  " testing purposes.
  echom "the total of all multiples of 3 or 5 to " . a:limit . " is " . total
  return total
endfunction

