#!/bin/bash

TEMP_FILE=$(mktemp /tmp/emacs-input.XXXXXX.md)

emacsclient -c -F "((name . \"emacs-floating-input\"))" "$TEMP_FILE"

if [ -f "$TEMP_FILE" ]; then
    cat "$TEMP_FILE" | wl-copy
    rm "$TEMP_FILE"
fi
