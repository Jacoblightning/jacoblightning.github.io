#!/usr/bin/env sh

if [ -z "$1" ]; then
	echo "Usage: $0 \"Post title\""
	exit
fi

fname="_posts/$(date +%Y-%m-%d)-${1}.md"

if [ -f "$fname" ]; then
	echo "Error: File exists"
	echo "Press enter to edit post instead"
	read -r _
	micro "$fname"
	exit
fi

sed "s/REPLACEWITHTITLE/$1/" _posts/template.md > "$fname"
git add "$fname"
# Yes, I use micro. I really don't feel like starting this debate.
micro "$fname"

