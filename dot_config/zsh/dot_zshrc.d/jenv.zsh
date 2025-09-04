#!/usr/bin/env zsh

(( $+commands[jenv] )) || return 1

export PATH="$HOME/.jenv/bin:$PATH"
eval "$(jenv init -)"
# jenv enable-plugin export
