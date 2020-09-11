#!/bin/sh -l

a=$(ls /github_workspace)
echo "Hello $1"
echo "github workspace: $a"
time=$(date)
echo ::set-output name=time::$time
