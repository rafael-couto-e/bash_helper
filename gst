#!/bin/bash

if [ -z "$1" ]; then
    git status
else
    if ["$1" == "--help" ]; then
        echo -e "\nShows the local branch's status."
        echo -e "Usage: gst [--help].\n"
    else
        echo "Unknown command: $1."
        echo "See --help for more information."
    fi
fi
