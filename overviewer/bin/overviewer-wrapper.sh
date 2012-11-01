#!/bin/bash

LOCKFILE="$HOME/tmp/overviewer.lock"

touch "$LOCKFILE"

read last_pid < "$LOCKFILE"

if [ ! -z "${last_pid}" -a -d "/proc/${last_pid}" ]
then
    echo "I'm already running as PID ${last_pid} - bailing" >&2
    exit 1
fi

trap 'rm -f "$LOCKFILE"; exit $?' INT TERM EXIT

echo $$ > "$LOCKFILE"

/usr/bin/overviewer.py $@
