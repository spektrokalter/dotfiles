" mark a region
"
map  #<  mvmw
map  #>  mw
map  #{  {mv``mw
map  #}  }mw``mv
map  #%  :1mark v|$mark w
"
"
" pipe marked region to shell
"
map  _a_   :'v,'ww !sh
map  _A_   'v!'wwrite-run sh
map  _`A_  'v!`wwrite-run sh
"
"
" shortcuts to shell
"
map  #!e  mv/^[[:blank:]]*EOF$/mw``
"
map     #<_a_
map  }    #}_a_
map  e    #!e_a_
map  xx   #<_A_
map  x}   #}_`A_
map  xe   #!e_A_
"
"
" su
"
map  \a\   :map  _a_   :'v,'ww !sh
map  \A\   :map  _A_   'v!'wwrite-run sh
map  \`A\  :map  _`A_  'v!`wwrite-run sh
map  \s\   :map  _a_   :'v,'ww !doas sh
map  \S\   :map  _A_   'v!'wdoas write-run sh
map  \`S\  :map  _`A_  'v!`wdoas write-run sh
"
map  \at\  :map  _at_  i!"xdd:@x
map  \st\  :map  _at_  i!doas -- "xdd:@x
"
map  _su_    \s\\S\\`S\\st\:map  #!s  _nosu_
map  _nosu_  \a\\A\\`A\\at\:map  #!s  _su_
map  #!s  _su_
"
"
" run shell commands on the terminal
"
map  _at_  i!"xdd:@x
map  t   0y$Op0_at_
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
map  #1   !!write-run cmdsuggest
map  #2   :w !grep '^\(   \)\?[^[:blank:]]' | more
map  #!g  'v!'wwrite-run chatgpt-here chat
"
"
map  OA  
map  OB  
