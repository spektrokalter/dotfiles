#!/hint/sh

[ -f ~/.xprofile ] && [ -r ~/.xprofile ] && . ~/.xprofile 

systemctl --user start st@1.service

exec systemctl --user --wait start dwm.service
