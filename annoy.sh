#! /bin/bash

SENTANCE=$*

OUTPUT=$(echo "$SENTANCE" | sed 's/../\u&/g')

# Ensure xclip is installed
[ -x "$(command -v xclip)" ] && (echo $OUTPUT | xclip -sel c)

echo $OUTPUT
