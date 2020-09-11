#!/bin/sh -l

a=$(ls /github_workspace)
b=$(ls)
echo "Hello $1"
echo "-----------"
echo "all: $b"
echo "github workspace: $a"
echo "-----------"
time=$(date)
echo ::set-output name=time::$time
