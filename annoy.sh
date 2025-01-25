#! /bin/bash

SENTANCE=$*

OUTPUT=$(echo "$SENTANCE" | sed 's/../\u&/g')

# Ensure xclip is installed
if command -v xclip 2>&1 >/dev/null
then
	echo $OUTPUT | xclip -sel c
fi

echo $OUTPUT
