#! /bin/bash
P=$(dirname $0)
$P/prompt "Shutdown?" "systemctl poweroff"

