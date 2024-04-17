" run sh commands
"
" ^A} ^X} ^X^X support counting
"
map    :.w !sh
map  }   }mx'':,'xw !sh
map  e   :,/^[[:space:]]*EOF$/w !sh
map    !!write-run sh
map  }   !}write-run sh
map  e   :,/^[[:space:]]*EOF$/!write-run sh
"
"
" run sh commands as root
"
map  ss  :.w !doas sh
map  s}  }mx'':,'xw !doas sh
map  se  :,/^[[:space:]]*EOF$/w !doas sh
map  ss  !!doas write-run sh
map  s}  !}doas write-run sh
map  se  :,/^[[:space:]]*EOF$/!doas write-run sh
"
"
" run sh commands on the terminal
"
map  t   0y$Op0i!"xdd:@x
map  st  0y$Op0i!doas -- "xdd:@x
"
"
" run ex commands
"
map    0"xy$:@x
map  }   0"xy}:@x
"
"
" run the current line as an @ macro
"
map  @  ^"xy$@x
"
"
map  #1  :w !grep '^\(   \)\?[^[:blank:]]' | more
map  #2  !!write-run cmdsuggest
"
"
map  OA  
map  OB  
