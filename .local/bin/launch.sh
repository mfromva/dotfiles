#!/usr/bin/env bash

sleep .15

DIR1="/usr/bin/"
DIR2="/bin/"

Menu="$(ls "$DIR1" "$DIR2"  | cut -d / -f 3 | uniq -u | sort | fzf --prompt="Which Program Would You Like To Run : " --border=rounded --margin=5% --color='fg:104,fg+:255,pointer:12,hl:255,hl+:12,header:12,prompt:255' --height 100% --reverse --header=" PROGRAMS " --info=hidden --header-first --exit-0 --select-1)"

exec devour "$Menu"
