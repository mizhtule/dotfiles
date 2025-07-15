#!/usr/bin/env zsh

(( $+commands[brew] )) || return 1
eval "$(/opt/homebrew/bin/brew shellenv)"

