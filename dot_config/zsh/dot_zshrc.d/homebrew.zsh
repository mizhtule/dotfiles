#!/usr/bin/env zsh

(( $+commands[brew] )) || return 1

eval "$(/opt/homebrew/bin/brew shellenv)"

alias brewup="brew update && brew upgrade && brew cleanup --prune=all"
alias brewinfo="brew leaves | xargs brew desc --eval-al"
