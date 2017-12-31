#!/usr/bin/env bash

run() {
  echo Hello
  if ! pgrep $1 ;
  then
    $@&
  fi
}

run compton
run nm-applet
