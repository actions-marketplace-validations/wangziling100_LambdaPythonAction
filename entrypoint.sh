#!/bin/sh -l

ls /github_workspace
echo "Hello $1"
time=$(date)
echo ::set-output name=time::$time
