#!/hint/sh

[ -f ~/.xprofile ] && [ -r ~/.xprofile ] && . ~/.xprofile 

exec dwm
