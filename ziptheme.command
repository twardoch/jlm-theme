#!/usr/bin/env bash
dir=${0%/*}
if [ "$dir" = "$0" ]; then dir="."; fi
cd "$dir" || exit
rm jlmTheme.tar.gz
tar -zcv --exclude='.DS_Store' -f jlmTheme.tar.gz jlmTheme