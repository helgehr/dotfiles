#!/bin/bash

nmcli_out=$(nmcli con)

if [[ "$1" == "quit" ]]; then
  exit 0
else
  if [[ ! -z $1 && "$nmcli_out" =~ "$1" ]]; then
    id=$(echo "$1" | awk '{printf $1}')
	up_down=$(nmcli -f GENERAL.STATE con show $id)
	if [[ -z $up_down ]]; then
	  exec nmcli con up $id > /dev/null
	  exit 0
	else
	  exec nmcli con down $id > /dev/null
	  exit 0
	fi
  fi
  echo -e "$nmcli_out"
  echo "quit"
fi

# Usage: rofi -show test -modi "test:~/rofi_test.sh"
