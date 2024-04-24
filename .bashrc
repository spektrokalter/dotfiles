#!/hint/bash

unset HISTFILE
HISTCONTROL=ignoreboth:erasedups

# change window title to ''
# OSC 2 ; '' ST
PS1='\[\e]2;\e\\\]'
