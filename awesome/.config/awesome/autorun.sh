#!/usr/bin/env bash

run() {
  if ! pgrep $1 ;
  then
    $@&
  fi
}

run compton
run nm-applet
run ~/.fehbg
