#!/bin/sh

case "$1" in
	start)
		echo Starting rpi-fan
		/bin/rpi-fan &
		;;
	*)
		;;
esac

exit $?
