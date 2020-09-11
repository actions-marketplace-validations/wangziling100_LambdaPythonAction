#!/bin/sh -l

echo "ci start..."
echo "check configeration"
old_dir=`pwd`
cd $1
if [ -f config.yaml ]; then
    cp config.yaml /workspace
else
    echo "Config file doesn't exist"
    exit -1
fi
if [ -f config.yaml ]; then
    cp app.py /workspace/demo
else
    echo "app.py is not defined, a demo will be installed."
fi
if [ -f requirements.txt ];then
    cp requirements.txt /workspace/demo
else
    echo "requirements.txt ist not defined"
    exit -1
fi
cd /workspace
bash script/fill_template.sh
bash script/rename.sh
make ci
cd $old_dir
