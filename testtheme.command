#!/usr/bin/env bash
dir=${0%/*}
if [ "$dir" = "$0" ]; then dir="."; fi
cd "$dir" || exit

./php/Less/bin/lessc jlmTheme/styles/index.less docs/jlm-all-php.css;
# ./php/Less/bin/lessc jlmTheme/styles/jlm/index.less docs/jlm-core-php.css;
