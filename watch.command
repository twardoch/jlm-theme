#!/usr/bin/env bash
dir=${0%/*}
if [ "$dir" = "$0" ]; then dir="."; fi
cd "$dir" || exit

watchman watch "$dir/styles"
watchman -- trigger "$dir/styles" build '*.less' -- "$dir/build.command"
