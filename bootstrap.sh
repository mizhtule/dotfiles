#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

function main() {
	rsync -avh --no-perms zsh ~/.config;
}

main;

unset main;

