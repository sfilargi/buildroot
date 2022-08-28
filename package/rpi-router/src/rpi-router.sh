#!/bin/sh

case "$1" in
        start)
                echo Starting router
                /sbin/rpi-router &
                ;;
        *)
                ;;
esac

exit $?

