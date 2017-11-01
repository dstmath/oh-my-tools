#!/bin/bash

PHONE=b4-0b-44-73-38-8e

case "$1" in  
	phone) arp -a | grep $PHONE | awk '{print $1}';;
	*) echo "no target for $1" >&2;;
esac
