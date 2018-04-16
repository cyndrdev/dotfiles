#!/usr/bin/env bash

config = "${XDG_CONFIG_HOME:-$HOME/.config}/polybar"

rm $config/geometry
ln -s $config/geometry-gaps $config/geometry

pkill polybar
while [ ! -z "`pgrep polybar`" ]; do sleep 0.1; done

polybar main >> /dev/null 2>&1 &
