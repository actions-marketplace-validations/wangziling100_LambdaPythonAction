#!/bin/sh -l

a=$(ls /github_workspace)
echo "Hello $1"
echo "$a"
time=$(date)
echo ::set-output name=time::$time
