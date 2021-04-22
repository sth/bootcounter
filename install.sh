#!/bin/sh
set -eu

cd "`dirname "$0"`"

run() {
	echo ">" "$@"
	"$@"
}

run cp counterfile-inc /usr/local/bin/

run cp bootcounter.service /etc/systemd/system/
echo "maybe run:"
echo "   systemctl enable bootcounter.service"
