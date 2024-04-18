#!/hint/sh

# guard against double-loading of ~/.profile in login shells spawned by tmux
if [ "${_DOT_PROFILE+x}" ]; then
	return
fi
export _DOT_PROFILE=1

PATH="$HOME/bin:$HOME/.local/bin:$PATH"

export MANPAGER='vim +MANPAGER "+set modifiable" "+syntax off" --not-a-term -'

export SSH_AUTH_SOCK="$(systemd-path user-runtime)/ssh-agent.socket"

# https://wiki.archlinux.org/title/Java_Runtime_Environment_fonts
#
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd -Dswing.aatext=true'

# no color
#
export JQ_COLORS='0;39:0;39:0;39:0;39:0;39:0;39:0;39:0;39'

export ENV="$HOME/.dashrc"

export FZF_DEFAULT_OPTS_FILE="$HOME/.fzfrc"

[ -f ~/.profile.private ] && [ -r ~/.profile.private ] && . ~/.profile.private
