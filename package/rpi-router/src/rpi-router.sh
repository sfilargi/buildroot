#!/bin/sh

case "$1" in
        start)
                echo Starting router
                /sbin/router &
                ;;
        *)
                ;;
esac

exit $?

