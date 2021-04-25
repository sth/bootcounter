#!/bin/sh
set -eu

cd "`dirname "$0"`"

run() {
	echo ">" "$@"
	"$@"
}

run cp bootcounter-increment /usr/local/bin/

run cp bootcounter.service /etc/systemd/system/
echo "maybe run:"
echo "   systemctl daemon-reload"
echo "   systemctl enable bootcounter.service"

