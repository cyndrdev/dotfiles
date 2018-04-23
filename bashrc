ttytext=$(tty | fgrep pts)
if [ -z $ttytext ]; then
    zsh
else
    xonsh
fi
exit 0
