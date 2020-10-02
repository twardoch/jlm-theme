#!/usr/bin/env bash 
lessc jlm.less ../docs/jlm.css
git add --all
git commit -am "Changed file $*"
git pull --commit --rebase=merges
git push
