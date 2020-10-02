#!/usr/bin/env bash
dir=${0%/*}
if [ "$dir" = "$0" ]; then dir="."; fi
cd "$dir" || exit

watchman watch .
watchman -- trigger . build '*' -- ./build.command
