#!/bin/sh -l

a=$(ls /workspace)
b=$(ls)
echo "Hello $1"
cp README.md /workspace
echo "-----------"
echo "all: $b"
echo "action workspace: $a"
echo "-----------"
time=$(date)
echo ::set-output name=time::$time
