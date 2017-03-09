#!/bin/bash

load_os_conf () {
  tmux_home=~/.tmux

  case "$OSTYPE" in
    darwin*) OS="osx";;
    linux*)  OS="linux";;
  esac

  if [ -f "$tmux_home/${OS}.conf" ]; then
    tmux source-file "$tmux_home/${OS}.conf"
  fi
}

load_os_conf
