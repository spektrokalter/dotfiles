" mark a region
"
map  #<  mvmw
map  #>  mw
map  #{  {mv``mw
map  #}  }mw``mv
map  #E  mv/^[[:blank:]]*EOF$/mw``
map  #%  :1mark v|$mark w
"
"
" pipe marked region to shell
"
map  @a@  :'v,'ww !sh
map  @A@  'v!'wwrite-run sh
"
"
" shortcuts to shell
"
map     #<@a@
map  }    #}@a@
map  e    #E@a@
map  xx   #<@A@
map  x}   #}@A@
map  xe   #E@A@
"
"
" su
"
map  %a%  :map  @a@  :'v,'ww !sh
map  %A%  :map  @A@  'v!'wwrite-run sh
map  %s%  :map  @a@  :'v,'ww !doas sh
map  %S%  :map  @A@  'v!'wdoas write-run sh
"
map  @su@    %s%%S%:map  #!s  @nosu@
map  @nosu@  %a%%A%:map  #!s  @su@
map  #!s  @su@
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
" chatgpt shortcuts
"
map  #Gp  'v!'wwrite-run chatgpt-here proofread
map  #Gt  'v!'wwrite-run chatgpt-here translate
map  #Gc  'v!'wwrite-run chatgpt-here chat
"
"
map  #1  !!write-run cmdsuggest
map  #2  :w !grep '^\(   \)\?[^[:blank:]]' | more
"
"
map  OA  
map  OB  
