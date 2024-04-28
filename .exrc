" run sh commands
"
" ^A} ^Axx ^Ax} support counting
"
map    :.w !sh
map  }   }mx'':,'xw !sh
map  e   :,/^[[:blank:]]*EOF$/w !sh
map  xx  !!write-run sh
map  x}  !}write-run sh
map  xe  :,/^[[:blank:]]*EOF$/!write-run sh
"
"
" run sh commands as root
"
map  ss   :.w !doas sh
map  s}   }mx'':,'xw !doas sh
map  se   :,/^[[:blank:]]*EOF$/w !doas sh
map  sxx  !!doas write-run sh
map  sx}  !}doas write-run sh
map  sxe  :,/^[[:blank:]]*EOF$/!doas write-run sh
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
map  ::  0"xy$:@x
map  :}  0"xy}:@x
"
"
" run @ macros
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
