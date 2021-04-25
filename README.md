# bootcounter

Maintain a file with a counter that gets incremented on boot.

## Usage

This repository contains two parts, a gqscript `bootcounter-increment`, which
increments the counter, and a `bootcounter.service`, which automatically calls
that script on system boot.

## Installation

    ./install.sh
    systemctl enable bootcounter.service

## Counter

The counter is stored in this file:

    /var/lib/bootcounter.count
