#!/usr/bin/env zsh

(( $+commands[kubectl] )) || return 1

alias k="kubectl"

alias kgp="kubectl get pods"
alias kaf="kubectl apply -f"
alias kdelf="kubectl delete -f"
alias klf="kubectl logs -f"
