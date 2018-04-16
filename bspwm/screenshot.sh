#!/usr/bin/env bash
cd $HOME/Screenshots
scrot
sleep .3 && notify-send "screenshot taken."
