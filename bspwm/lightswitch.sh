#!/usr/bin/env bash

lock="/tmp/wal_light"
if [ -f $lock ]; then
	wal -R 2>&1 >> /dev/null
	rm $lock
else
	wal -R -l 2>&1 >> /dev/null
	touch $lock
fi

. "${BSPWM_CONFIG}/bspwmrc" reload
