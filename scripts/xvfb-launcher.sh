#!/bin/sh

echo "Running X Virtual Frame Buffer"

xvfb-run --server-args='-screen 0 1366x768x24 -ac -nolisten tcp' $@
