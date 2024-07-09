#!/bin/bash
# /* ====| https://github.com/EnderSpy29 |==== */  ##

time=$(date "+%d-%b_%H-%M-%S")
dir="$(xdg-user-dir)/Pictures/Screenshots"
file="Screenshot_${time}_${RANDOM}.png"

shotarea() {
	tmpfile=$(mktemp)
	grim -g "$(slurp)" - >"$tmpfile"
	if [[ -s "$tmpfile" ]]; then
		wl-copy <"$tmpfile"
		mv "$tmpfile" "$dir/$file"
	fi
	rm "$tmpfile"
}