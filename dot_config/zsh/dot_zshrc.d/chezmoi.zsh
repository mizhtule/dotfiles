#!/usr/bin/env zsh

(( $+commands[chezmoi] )) || return 1
alias cm="chezmoi"
