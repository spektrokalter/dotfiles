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
map  _e_  mv/^[[:blank:]]*EOF$/mw``
"
map     #<_a_
map  }    #}_a_
map  e    _e__a_
map  xx   #<_A_
map  x}   #}_`A_
map  xe   _e__A_
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
map  _su_    \s\\S\\`S\:map  #!s  _nosu_
map  _nosu_  \a\\A\\`A\:map  #!s  _su_
map  #!s  _su_
"
"
" run shell commands on the terminal
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
map  #1   !!write-run cmdsuggest
map  #2   :w !grep '^\(   \)\?[^[:blank:]]' | more
map  #!g  'v!'wwrite-run chatgpt-here chat
"
"
map  OA  
map  OB  
