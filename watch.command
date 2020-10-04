#!/usr/bin/env bash
dir=${0%/*}
if [ "$dir" = "$0" ]; then dir="."; fi
cd "$dir" || exit

watchman watch 'styles'
watchman -- trigger 'styles' build '*.less' -- "$dir/build.command"
