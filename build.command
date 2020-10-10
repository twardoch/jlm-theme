#!/usr/bin/env bash
dir=${0%/*}
if [ "$dir" = "$0" ]; then dir="."; fi
cd "$dir" || exit

echo "Changed: $*"
lessc jlmTheme/styles/index.less docs/jlm.css
git add --all
git commit -am "Changed file $*"
git pull --commit --rebase=merges
git push
