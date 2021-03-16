#!/bin/bash
main() {
  local reset
  for index in $(seq 0 9); do
    reset="/sys/kernel/debug/mwifiex/mlan${index}/reset"
    if [ -e $reset ]; then
      echo 1 > $reset
    fi
  done
}

main
