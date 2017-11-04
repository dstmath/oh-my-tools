#!/bin/bash

if [ -f "$HOME/.cgywinrc" ]; then
	source ~/.cygwinrc
fi

WORK=user5@10.150.20.15
PHONE=root@localhost

echo "connect to $1"
case "$1" in  
	work) ssh $WORK -p 22 -o ForwardX11Trusted=yes -o ForwardX11=yes -C -o Compression=yes;;
	phone) adb -s 981da11d forward tcp:10022 tcp:22;ssh $PHONE -p 10022 -o ForwardX11Trusted=yes -o ForwardX11=yes -C -o Compression=yes;;
	*) echo "no target for $1" >&2;;
esac
