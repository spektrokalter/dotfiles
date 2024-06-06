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
so  ~/.exrc.d/sh
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
map  _su_    :so  ~/.exrc.d/doas-sh:map  #!s  _nosu_:
map  _nosu_  :so  ~/.exrc.d/sh:map  #!s  _su_:
map  #!s  _su_
"
"
" run shell commands on the terminal
"
map  t  0y$Op0_at_
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
