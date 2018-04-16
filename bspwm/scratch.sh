#!/usr/bin/env bash

id=$(xdo id -n scratch);
if [ -z "$id" ]; then
	urxvt -name scratch &
else
	if [[ $(xprop -id $id | awk '/window state: / {print $3}') != 'Withdrawn' ]]; then
		xdo hide -n scratch
	else
		xdo show -n scratch
	fi
fi
