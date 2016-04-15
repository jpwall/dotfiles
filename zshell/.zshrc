# Created by newuser for 5.0.8

autoload -U compinit
compinit

autoload -U promptinit
promptinit
prompt adam1 red

# For syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


#PROMPT=%{%M@$fg[blue]%n}%#

autoload -U colors && colors

# Previous items carried over from .bashrc
export PATH=${PATH}:~/bin
