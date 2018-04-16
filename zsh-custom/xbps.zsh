# shortcut functions for xbps

function xbi () {
	[ -z "$1" ] && echo "usage:\txbi [-ASfyuv] (packages)" && return 1
	$([ "$1" = "-h" ] || [ "$1" = "--help" ]) && xbps-install --help && return 0
	sudo xbps-install $@
}

function xbq () {
	[ -z "$1" ] && echo "usage:\txbq [options] mode [arguments]" && return 1
	$([ "$1" = "-h" ] || [ "$1" = "--help" ]) && xbps-query --help && return 0
	xbps-query $@
}

function xbr () {
	[ -z "$1" ] && echo "usage:\txbr [-Cfyov] (packages)" && return 1
	$([ "$1" = "-h" ] || [ "$1" = "--help" ]) && xbps-remove --help && return 0
	sudo xbps-remove $@
}
