#!/usr/bin/env bash
dir=${0%/*}
if [ "$dir" = "$0" ]; then dir="."; fi
cd "$dir" || exit
dir=$(grealpath "$dir")

echo "$dir"
watchman watch "$dir/styles"
watchman -j <<-EOT
["trigger", "$dir/styles", {
  "name": "build",
  "expression": ["match", "**/*.less", "wholename"],
  "command": ["$dir/build.command"]
}]
EOT
