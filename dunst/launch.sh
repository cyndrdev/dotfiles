#!/usr/bin/env bash

. "${HOME}/.cache/wal/colors.sh"

pkill dunst
while [ ! -z "`pgrep dunst`" ]; do sleep 0.1; done

dunst \
	-lb "${color15:-#FFFFFF}" \
	-nb "${color15:-#FFFFFF}" \
	-cb "${color15:-#FFFFFF}" \
	-lf "${color0:-#000000}" \
	-cf "${color0:-#000000}" \
	-nf "${color0:-#000000}" \
	-fn "tewi 8" \
	-geometry "600x40-50+50" \
	>> /dev/null 2>&1 &
