#!/bin/bash

input() {
  command="$@`echo -ne '\015'`"
  screen -p 0 -S "slinger" -X stuff "$command"
}

if screen -list | grep -q "slinger"; then
  input $@
else
  screen -dmS "slinger"
  input $@
fi
