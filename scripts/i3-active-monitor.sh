#! /bin/bash

i3-msg -t get_workspaces | jq -r '.[] | select(.focused == true) | .output'

