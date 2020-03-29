#!/bin/bash

# Custom environment variables
export MY_DOTDIR="$HOME/.dotfiles"
export MY_CONFDIR="$HOME/.config"

# Default programs
export EDITOR="nvim"

# Zsh variables
export ZDOTDIR="$MY_CONFDIR/zsh"
export HISTFILE="$MY_CONFDIR/zsh/.zsh_history"
export ZSH=$HOME/.config/oh-my-zsh

# Custom locations
export LOCAL_BIN="$HOME/.local/bin"
export MY_SCRIPTS="$HOME/.local/scripts"
export PATH=$PATH:$LOCAL_BIN:$MY_SCRIPTS

