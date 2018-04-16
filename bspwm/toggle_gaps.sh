#!/usr/bin/env bash
config="${XDG_CONFIG_HOME:-$HOME/.config}/polybar"

mainconfig="${config}/geometry"
gapconfig="${config}/geometry-gaps"
flatconfig="${config}/geometry-flat"

[ "$(readlink -f $mainconfig)" = $gapconfig ] && has_gaps=1 || has_gaps=0
[ $has_gaps = 0 ] && newconfig=$gapconfig || newconfig=$flatconfig
[ $has_gaps = 0 ] && newgaps=30 || newgaps=0

rm $mainconfig
ln -s $newconfig $mainconfig

bspc config top_padding $(expr 35 + $newgaps)
pkill -USR1 -x polybar
bspc config window_gap $newgaps
