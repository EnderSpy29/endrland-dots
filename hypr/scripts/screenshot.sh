#!/bin/bash
# A screenshot script

tmpfile=$(mktemp)
time=$(date +"%d-%m-%Y_%H:%M:%S.%3N")
dir="$HOME/Pictures/Screenshots"
file="Screenshot_${time}.png"

grim -g "$(slurp)" - >"$tmpfile"
if [[ -s "$tmpfile" ]]; then
wl-copy <"$tmpfile"
mv "$tmpfile" "$dir/$file"
fi