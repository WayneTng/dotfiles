#!/usr/bin/env bash

alias ll='ls -al'
alias ls='ls -GFh'

# generate password
alias passgen="openssl rand -base64 ${1:-10} | tr -d '\n' | tee >(pbcopy) && echo ' is copied to your clipboard'"
