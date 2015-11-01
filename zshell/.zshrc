# Created by newuser for 5.0.8

autoload -U compinit
compinit

autoload -U promptinit
promptinit
prompt clint
#PROMPT=%{%M@$fg[blue]%n}%#

autoload -U colors && colors

# Previous items carried over from .bashrc
export PATH=${PATH}:~/bin
