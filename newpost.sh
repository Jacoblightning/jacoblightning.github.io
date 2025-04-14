#!/usr/bin/env sh

if [ -z "$1" ]; then
	echo "Usage: $0 \"Post title\""
	exit
fi

fname="_posts/$(date +%Y-%m-%d)-${1}.md"

if [ -f "$fname" ]; then
	echo "Error: File exists"
	read -p "Press enter to edit post instead"
	micro "$fname"
	exit
fi

sed "s/REPLACEWITHTITLE/$1/" _posts/template.md > "$fname"
micro "$fname"

