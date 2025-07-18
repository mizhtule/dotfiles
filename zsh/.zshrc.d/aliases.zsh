#!/usr/bin/env zsh

alias ls='ls -lhG'
alias ll='ls -lhG'
alias la='ls -lAhG'
alias l='ls -lAhG'
alias ldot='ls -ldG .*'
alias l.='ls -ldG .*'

# Access dotfiles quickly
[[ -n "$DOTFILES_HOME" ]] && alias dotfiles='cd $DOTFILES_HOME'

