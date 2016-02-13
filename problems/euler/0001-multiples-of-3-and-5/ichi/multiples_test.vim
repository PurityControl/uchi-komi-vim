" simple unit test script to ensure function returns expected euler values
" To run tests:
" open this file in a vim buffer and run the command
" :source %
"
" or from the command line run
" vim -S multiples_test.vim
source multiples.vim

function! Assert_equals(expected, actual, message)
  if a:expected == a:actual
    echo "PASS ... " . a:message
  else
    throw "FAIL ... " . a:message . " Expected " . a:expected . " but got " . a:actual
  endif
endfunction

function! Multiples_test()
  " not sure why function call in Assert_equals parameter does not need
  " a call statement!
  call Assert_equals(23, Multiples_to(10), "Multiples to 10 is 23")
  call Assert_equals(233168, Multiples_to(1000), "Multiples to 10 is 233168")
endfunction

call Multiples_test()

