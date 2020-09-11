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
cp config.yaml /workspace
cp app.py /workspace/demo
old_dir=`pwd`
cd /workspace
bash script/fill_template.sh
bash script/rename.sh
make ci
echo ::set-output name=time::$time
