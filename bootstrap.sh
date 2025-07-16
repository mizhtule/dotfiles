#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

function main() {
  rsync -avh --no-perms zsh ~/.config;
  rsync -avh --no-perms ghostty ~/.config;

  zsh;
}

main;

unset main;

