#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

# Порт для Даниных апих
export PORT=8080
# без этой строчки при попытке локального запуска апихи она не найдёт порт
