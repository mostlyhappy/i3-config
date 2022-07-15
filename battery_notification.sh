#!/bin/bash

while :
do
	POWER=$(acpi -b | sed -ne 's/Battery 0.* \([0-9]*\)%/\1/p')
	if [[ $POWER -le 40 ]]; then
		notify-send "Battery power is lower than 15%!"
	fi
sleep 30
done
