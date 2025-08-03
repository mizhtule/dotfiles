#!/usr/bin/env zsh

(( $+commands[pyenv] )) || return 1

[[ -d "$(pyenv root)/bin" ]] && export PATH="$(pyenv root)/bin:${PATH}"

eval "$(pyenv init - zsh)"
