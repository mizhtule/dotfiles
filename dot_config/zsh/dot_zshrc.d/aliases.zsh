#!/usr/bin/env zsh

alias ls='ls --color=always -l'

(( $+commands[eza] )) && alias ls='eza -l --icons=auto'

alias ll='ls'
alias la='ls -a'
alias l='ls -a'
alias ldot='ls -d .*'
alias l.='ldot'
