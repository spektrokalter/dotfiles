#!/hint/sh

# guard against double-loading of ~/.profile in login shells spawned by tmux
if [ "${_DOT_PROFILE+x}" ]; then
	return
fi
export _DOT_PROFILE=1

[ -f ~/.profile.private ] && [ -r ~/.profile.private ] && . ~/.profile.private
